class MessageController < ApplicationController
  def index

  	@messages = Message.where(receiver_id: session[:user_id])
  end

  def new
  	# @message = Message.new
  	@title = params[:title] if params[:title]
  	@sender = User.find_by(id: session[:user_id])
  	@receiver = User.find_by(user_name: params[:user_name])
  end

  def create
  	@message = Message.new()
  	@message.sender = User.find_by(user_name: params[:sender])
  	@message.receiver = User.find_by(user_name: params[:receiver])
  	# Make sure there is a title
    @message.title = "#{params[:title]} - #{Time.now.strftime("%y%m%d%H%M%S%2N")
}"
    @message.message_body = params[:message_body]
  	@message.is_read = false
  	@message.save
  	redirect_to user_path(@message.receiver.user_name)
  end

  def show
    # Find message by sender and name
    user_id =User.find_by(user_name: params[:user_name]).id
    title = params[:title]
    @message = Message.where(sender_id: user_id).find_by(title: title)
    # Set it to read
    @message.is_read = true
    @message.save
  end

  def destroy
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
