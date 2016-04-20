class JokesController < ApplicationController
  
  def show
    @joke = Joke.find(params[:id])
  end
  
  
  def new
  end
end
