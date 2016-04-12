class UsersController < ApplicationController
  def index
  	@users = User.where.not(id: session[:user_id])
  end

  def show
  	@user = User.find_by(user_name: params[:user_name])
  end

  def create
  	if (!User.find_by(email: params[:email]))
	  	@user =User.new({
	  		user_name: params[:user_name],
	  		email: params[:email],
	  		first_name: params[:first_name],
	  		last_name: params[:last_name],
	  		born_on: Date.parse(params[:born_on]),
	  		password: params[:password],
	  		password_confirmation: params[:password_confirmation]
	  		})
	  	if @user.save
	  		month = (@user.born_on.month+10)%12
	  		day = @user.born_on.day
	  		@user_sign = SunSign.find_by(id: month)
	  		if (@user_sign.day.to_i <= day)
	  			@user.sun_sign_id = SunSign.find_by(id: month).id
	  			@user.save
	  		else
	  			@user.sun_sign_id = SunSign.find_by(id: month).previous.id
	  			@user.save
	  		end
	      	session[:user_id] = @user.id
	  		redirect_to users_path
	  	else
	  		render :new
  		end
  	else
  		render :new
  	end
  end

  def update

  end

  def new
  	redirect_to users_path if session[:user_id]
  end

  def search
  end

  def edit
  end

  def update
  end


  def destroy
  	@user = User.find_by(id: session[:user_id])
  	@user.destroy
   	session.delete(:user_id)
	redirect_to root_path
  end
end
