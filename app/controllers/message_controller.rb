class MessageController < ApplicationController
  def index
    redirect_to login_path unless session[:user_id]
  	@messages = Message.where(receiver_id: session[:user_id])
    @user = User.find_by(id: session[:user_id])
  end

  def new
    redirect_to login_path unless session[:user_id]
  	@title = params[:title] if params[:title]
  	@sender = User.find_by(id: session[:user_id])
  	@receiver = User.find_by(user_name: params[:user_name])
    @message =Message.new
  end

  def create
    redirect_to login_path unless session[:user_id]
  	@message = Message.create(message_params)
    # Make sure the title exists and is dynamic
    @message.title = "#{message_params[:title]} - #{Time.now.strftime("%y%m%d%H%M%S%2N")
}"
  	# Make new message unread
    @message.is_read = false
  	if @message.save
      redirect_to messages_path
    else
      render :new
    end
  end

  def show
    redirect_to login_path unless session[:user_id]
    # Find message by sender and name
    user_id =User.find_by(user_name: params[:user_name]).id
    title = params[:title]
    @message = Message.where(sender_id: user_id).find_by(title: title)
    # Set it to read
    @message.is_read = true
    @message.save
  end

  def destroy
    redirect_to login_path unless session[:user_id]
    # Find message by sender and name
    user_id =User.find_by(user_name: params[:user_name]).id
    title = params[:title]
  	@message = Message.where(sender_id: user_id).find_by(title: title)
  	# Destroy the message
    @message.destroy
    # Redirect to messages
  	redirect_to messages_path
  end
end
private
  def message_params
    params.require(:message).permit(:sender_id, :receiver_id, :title, :message_body)
  end