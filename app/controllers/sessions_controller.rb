class SessionsController < ApplicationController

  def new
    if params[:login].present?
      @message="You must be logged in to buy this item!"
    end
  end

  def create
    u = User.find_by_email(params[:email])
    if u.present? && u.authenticate(params[:password])
        session[:email] = u.email
       redirect_to root_url
    else
      redirect_to login_url, notice: 'Please try again.'
    end
  end

  def destroy
    reset_session
    redirect_to root_url, notice: "You've been logged out."
  end
end
