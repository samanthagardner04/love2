class SessionsController < ApplicationController

  def new
  end

  def create
    u = User.find_by_email(params[:email])
    if u.present?
      if u.authenticate(params[:password])
        session[:email] = u.email
       redirect_to root_url
      end
    else
      redirect_to login_url, notice: 'Nice try'
    end
  end

  def destroy
    reset_session
    redirect_to login_url, notice: "You've been logged out"
  end
end
