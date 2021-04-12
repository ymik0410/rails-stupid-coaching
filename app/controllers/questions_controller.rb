class QuestionsController < ApplicationController
  def ask
  end

  def answer
    # raise
    @question = params[:answer]

    if @question.downcase == 'i am going to work right now!'
      @answer = ''
    elsif @question.downcase == 'i am going to work'
      @answer = 'Great!'
    elsif @question.end_with?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end

    @answer
  end
end
