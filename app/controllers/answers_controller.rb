class AnswersController < ApplicationController
  def index
    @answers = answer.all
  end

  def show
    @answers = answer.find(params[:id])
  end
end
