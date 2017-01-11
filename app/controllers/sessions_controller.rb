class SessionsController < ApplicationController

  def new
  end

  #login current user
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      params[:cookie][:remember_me] ? remember(user) : forget(user)
      # debugger
      redirect_to user
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  #log out the current user
  def destroy
    log_out if logged_in?
    redirect_to root_url
  end

end
