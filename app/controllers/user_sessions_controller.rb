class UserSessionsController < ApplicationController
  def create
    user = User.find_by(email: params[:user][:email])
    if user && user.authenticate(params[:user][:password])
      session[:user_id] = user.id
      #flash[:success] = "Thanks for logging in!"
      redirect_to trees_path
    else
      logger.info params.inspect
      if user
      	logger.info("Incorrect password")
      else
      	logger.info("Non-existent user: #{params[:user][:email]}")
      end
      flash[:error] = t("login_failure_msg")
      redirect_to :root
    end
  end
end
