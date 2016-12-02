class SessionsController < ApplicationController
  def new

  end
  def create
    @user = User.find_by_username(params[:username])
    if @user.is_password? params[:password]
      sign_in! @user
      redirect_to @user
    else
      flash.now[:error] = "Incorrect username or password."
      render :new
    end
  end
end
