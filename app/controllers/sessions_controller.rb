class SessionsController < ApplicationController
  def new
    @user = User.new
    redirect_to users_path if session[:user_id]
  end

  def index

  end

  def create
    if params[:login]
      user = User.find_by(login_params)
      if user && user.authenticate(params[:login][:password])
        session[:user_id] = user.id
        redirect_to users_path
      else
        render :new
      end
    else 
      user = User.find_by(login_params_welcome)
      if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        redirect_to users_path
      else
    		render :new
    	end
    end
  end

  def destroy
  	session.delete(:user_id)
  	redirect_to root_path
  end
end

private
  def login_params
    params.require(:login).permit(:user_name)
  end
  def login_params_welcome
    params.permit(:user_name)
  end