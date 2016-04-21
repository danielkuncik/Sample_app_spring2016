class QuestionsController < ApplicationController
  
  def show
    @question = Question.find(params[:id])
    @answers = @question.answers
  end
  
  
###  @user = User.find(params[:id])
##    @microposts = @user.microposts.paginate(page: params[:paage])

  
end
