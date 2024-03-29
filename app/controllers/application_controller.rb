class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :set_locale
 
  def set_locale
    I18n.locale = extract_locale_from_tld || I18n.default_locale
  end

	# Get locale from top-level domain or return nil if such locale is not available
	# You have to put something like:
	#   127.0.0.1 application.com
	#   127.0.0.1 application.it
	#   127.0.0.1 application.pl
	# in your /etc/hosts file to try this out locally
	def extract_locale_from_tld
	  parsed_locale = request.host.split('.').last
	  parsed_locale = "pt" if parsed_locale == "br"
	  puts "Locale %{parsed_locale}" 
	  I18n.available_locales.include?(parsed_locale.to_sym) ? parsed_locale : nil
	end
end
