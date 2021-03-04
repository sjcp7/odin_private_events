class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(username: params[:login][:username])
    if user
      log_in(user)
      redirect_to root_url
    else
      flash.now[:warning] = 'Incorrect username'
      render 'new'      
    end
  end

  def destroy
    log_out
  end
end
