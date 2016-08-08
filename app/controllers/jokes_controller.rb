class JokesController < ApplicationController
  
  def show
    @joke = Joke.find(params[:id])
  end
  
  
  def new
    @joke = Joke.new
  end
  
  def create
    @joke = Joke.new(prompt: params[:prompt], punchline: params[:punchline], picture: params[:picture])
    if @joke.save
      redirect_to root_url
    else
      render "new"
    end
  end
  
  def index
  end
  
  def killpage
    @joke = Joke.find(params[:id])
  end
  
  def destroy
    Joke.find(params[:id]).destroy
    redirect_to '/jokes/index'
  end
  
end
