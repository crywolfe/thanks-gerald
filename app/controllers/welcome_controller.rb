class WelcomeController < ApplicationController

  def index
  end

  def reverse
    word = params[:key]
    #send it back as JSON
    render json: { key: word.reverse.upcase! } 
  end

end