class SessionsController < ApplicationController
  def new
  	redirect_to users_path if session[:user_id]
  end

  def index

  end

  def create
  	user = User.find_by({user_name: params[:user_name]})
  	if user && user.authenticate(params[:password])
  		session[:user_id] = user.id
  		redirect_to users_path
  	else
  		render :new
  	end
  end

  def destroy
  	session.delete(:user_id)
  	redirect_to root_path
  end
end
