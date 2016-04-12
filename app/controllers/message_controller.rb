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
  	@message.title = params[:title]
  	@message.message_body =params[:message_body]
  	@message.save
  	redirect_to user_path(@message.receiver.user_name)
  end

  def show
  	@message = Message.find_by(title: params[:title])
  end

  def destroy
  	@message = Message.find_by(title: params[:title])
  	@message.destroy
  	redirect_to messages_path
  end
end
