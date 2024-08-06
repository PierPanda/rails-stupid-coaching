class PagesController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    if @question == 'I am going to work'
      @coach_answer = 'Great !'
    elsif @question.include?('?')
      @coach_answer = "It's a silly question..."
    else
      @coach_answer = "I don't care, get dressed and go to work!."
    end
  end
end
