class QuestionsController < ApplicationController
  def ask
  end

  def answer
    # Need to get the user input param instead of "your_message"
    # @test = params[:ask]
    @question = params[:ask]
    last_char = @question.split("").last

    if @question == "I am going to work right now!"
      return @answer = "Great!"
    elsif last_char == "?"
      return @answer = "Silly question, get dressed and go to work!"
  
    else
      return @answer = "I don't care, get dressed and go to work!"  
    end

  end
end
