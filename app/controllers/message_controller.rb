class MessageController < ApplicationController
  def index

  	@messages = Message.where(receiver_id: session[:user_id])
  end

  def new
  	@message = Message.new
  	@sender = User.find_by(id: session[:user_id])
  	@receiver = User.find_by(user_name: params[:user_name])
  end

  def create
  end
end
