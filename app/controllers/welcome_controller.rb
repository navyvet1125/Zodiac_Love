class WelcomeController < ApplicationController
  def index
  	session.delete(:user_id) unless User.find_by(id: session[:user_id])
  	@signs= SunSign.all
  end
end
