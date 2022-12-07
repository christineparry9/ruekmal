class AnswersController < ApplicationController
  def index
    @answers = Answer.all
  end

  def show
    @answers = Answer.find(params[:id])
  end
end
