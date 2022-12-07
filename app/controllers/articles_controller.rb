class ArticlesController < ApplicationController
  def index
    @articles = Article.all
    @question = Question.all.sample
  end

  def show
    @article = Article.find(params[:id])
  end

private
  def article_params
    params.require(:article).permit(:id, :title)
  end
end
