class SessionsController < ApplicationController
  def new
  end

  def create
    #user = User.find_by(user_id: "test".downcase)値を直接入れる
    user = User.find_by(user_id: params[:session][:user].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to root_url
    else
      render :new
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end
end