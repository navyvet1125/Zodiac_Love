class UsersController < ApplicationController
  def index
  	@users = User.where.not(id: session[:user_id])
  end

  def show
  	@user = User.find_by(user_name: params[:user_name])
  end

  def create
    params = request.request_parameters
  	if (!User.find_by(email: params[:email]))
      @user =User.create({
        user_name: params[:user_name],
        email: params[:email],
        first_name: params[:first_name],
        last_name: params[:last_name],
	  		born_on: params[:born_on],
        gender: params[:gender],
        desired_gender: params[:desired_gender],
        height_feet: params[:height_feet],
        height_inches: params[:height_inches],
        zip_code: params[:zip_code],
	  		password: params[:password],
	  		password_confirmation: params[:password_confirmation]
	  	})
	  	# verify that the new user was saved
      if @user.save
        # If saved, Determine user's sun sign
        # The zodiac starts with Aries, so we will need to convert month
	  		sign_month = (@user.born_on.month+10)%12
	  		day = @user.born_on.day
        # Get the sun sign associated with the sign_month
	  		@user_sign = SunSign.find_by(id: sign_month)
        # if the day is greater than or equal to the start of the sign then set the sign
	  		if (@user_sign.day.to_i <= day)
	  			@user.sun_sign_id = SunSign.find_by(id: sign_month).id
	  			@user.save
        # If the day is less than the start date, assign the previous sun sign
	  		else
	  			@user.sun_sign_id = SunSign.find_by(id: sign_month).previous.id
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
        :born_on => params[:born_on],
        :gender => params[:gender],
        :desired_gender => params[:desired_gender],
        :zip_code => params[:zip_code],
        :height_feet => params[:height_feet],
        :height_inches => params[:height_inches],
        :profile_title =>params[:profile_title],
        :profile_info =>params[:profile_info]
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
