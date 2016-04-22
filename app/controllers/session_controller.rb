class SessionController < ApplicationController
  def new
  end
  
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to user
    else
      flash.now[:danger] = "Invalid email/password combination"
      render "new"
    end
  end
  
  def and_one
    session[:color] = params[:session][:color]
    redirect_to root_url
  end
  
  def and_two
    session[:color] = params[:color]
    redirect_to root_url
  end
  
  def and_three
    session[:color] = params[:color]
    redirect_to root_url
  end
  
  def answer_question
    answer = params[:color]
    if answer == 'correct'
      session[:answer] = 'correct'
      session[:quiz_grade] += 1
    else
      session[:answer] = 'wrong'
    end
    session[:quesiton] += 1
    redirect_to 
  end
  
  def answer_question_2
    answer = params[:president]
    if answer == 'true'
      session[:answer] = 'correct'
      session[:quiz_grade] += 1
    else
      session[:answer] = 'wrong'
    end
    session[:question] += 1
    if session[:question] <= Question.count
      redirect_to "/questions/" + String(session[:question])
    else
      redirect_to root_url
    end
  end
  
  def destroy
    log_out
    redirect_to root_url
  end
  
end
