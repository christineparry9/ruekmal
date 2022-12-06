class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def show
    @questions = Question.find(params[:id])
  end

  private
  def question_params
    params.require(:question).permit(:id, :content)
  end
end
