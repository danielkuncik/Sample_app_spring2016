class AttemptsController < ApplicationController
  def new
  end
  
  def create
    params[:attempt][:grade] = 0
    redirect_to quizpage_url
  end
  
  def destroy
  end
  
end
