class UsersController < ApplicationController
  def index
  	@users = User.where.not(id: session[:user_id])
  end

  def show
  	@user = User.find_by(user_name: params[:user_name])
  end

  def create
    params = request.request_parameters[:user]
  	if (!User.find_by(email: params[:email]))
      @user =User.create({
        user_name: params[:user_name],
        email: params[:email],
        first_name: params[:first_name],
        last_name: params[:last_name],
	  		born_on: params[:born_on],
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

  def new
  	redirect_to users_path if session[:user_id]
    @user= User.new
  end

  def edit
    @user = User.find_by(id: session[:user_id])
  end

  def update
    params = request.request_parameters
    @users = User.where.not(id: session[:user_id]).find_by(email: params[:email])
    if (!@users)
      @user = User.find_by(id: session[:user_id])
      @user = User.update(
        session[:user_id],
        :user_name => params[:user_name],
        :email => params[:email],
        :first_name => params[:first_name],
        :last_name => params[:last_name],
        :born_on => params[:born_on]
      )
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
        redirect_to users_path
      else
        redirect_to user_edit_path(User.find_by(id: session[:user_id]).user_name)
      end
    else
      redirect_to user_edit_path(User.find_by(id: session[:user_id]).user_name)
    end
  end


  def destroy
  	@user = User.find_by(id: session[:user_id])
  	@user.destroy
   	session.delete(:user_id)
    redirect_to root_path
  end
end
