class ArticlesController < ApplicationController
    def index
      @articles = Article.all
      @articles_for_you = Article.where(category: "for you")
      @articles_lower_back = Article.where(category: "lower back")
      @articles_neck = Article.where(category: "neck")
      @articles_shoulder = Article.where(category:"shoulder")

      @question = Question.all.sample
      @answers = @question.answers
      @answer_one = @question.answers[0]
      @answer_two = @question.answers[1]
    end

    def check_answer
      id_answer_chosen = params[:answer_id][1].to_i
      @answer_chosen = Answer.find(id_answer_chosen)
      id_other_question = @answer_chosen.question.answer_ids.filter{|id| id != id_answer_chosen}.first
      @answer_not_chosen = Answer.find(id_other_question)

      if @answer_chosen.correct
        @feedback = "Correct Answer!"
      else
        @feedback = "Wrong answer! the correct is : #{@answer_not_chosen.content}"
      end
      respond_to do |format|
        format.html { redirect_to articles_path, feedback: @feedback }
        format.json
      end
    end

    def show
      @article = Article.find(params[:id])
    end

  private
    def article_params
      params.require(:article).permit(:id, :title)
    end
  end
