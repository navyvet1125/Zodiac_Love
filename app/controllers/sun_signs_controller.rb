class SunSignsController < ApplicationController
  def index
  	@sun_signs = SunSign.all
  end

  def show
  	@sun_sign = SunSign.find_by(name: params[:name])
  	@next_sign = @sun_sign.next
  	@last = @next_sign.day.to_i
  	@last = @last - 1
  	@info = @sun_sign.info.split("@@@")
  	@compatible = @sun_sign.most_compatible.split(", ")
  	@incompatible = @sun_sign.least_compatible.split(", ")
  	@next = @sun_sign.next
  	@previous = @sun_sign.previous
  end
end
