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

  	def downcase_email
    	self.email = email.downcase
  	end	

    def encrypt_pass
      # TODO: use a HASH and a Salt to store password
      self.password_digest = password
    end


end
