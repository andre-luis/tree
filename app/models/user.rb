class User < ActiveRecord::Base

	attr_accessor :password, :password_confirmation

	validates :name, presence: true
  validates :email, presence: true,
                    uniqueness: true,
                    format: {
                      with: /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/
                    }

  validates :password, presence: true, confirmation: true;


  	before_save :downcase_email, :encrypt_pass

    def authenticate(pw)
      if (self.password_digest)
        User.encrypt(pw, get_encrypt_time) == self.password_digest
      else
        false
      end
    end

    private
    def get_encrypt_time
      self.password_digest[40, self.password_digest.length-40]
    end
 
    def encrypt_pass
      self.password_digest = User.encrypt(password)
    end

    def downcase_email
      self.email = email.downcase
    end 




    def self.encrypt(pw, time=nil)
      time ||= Time.now.to_s
      Digest::SHA1.hexdigest(pw+User.salt(time)) + time
    end


    def self.salt(time)
      Digest::SHA1.hexdigest(time.to_s)
    end


end
