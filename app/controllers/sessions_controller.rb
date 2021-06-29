class SessionsController < ApplicationController
  def new
  end

  def create
    binding.pry
    user = User.find_by(user: params[:session][:user_id].downcase)
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