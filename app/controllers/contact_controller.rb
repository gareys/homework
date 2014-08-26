class ContactController < ApplicationController
  def index
  end
  def save
  	@name = params[:name]
  	@subject = params[:subject]
  	@message = params[:message]
  	redirect_to "/posts?name=#{@name}", notice: "Good work, #{@name}! We will get back to you shortly."
  end
  def thanks
  end
end
