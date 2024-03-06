class GirudoQuestionsController < ApplicationController
  def index
    @girudo_questions = GirudoQuestion.all
  end

  def show
    @girudo_question = GirudoQuestion.find(params[:id])
    # ギルドに応じた最初の質問のIDを取得します。
    first_question_id = @girudo_question.id == 1 ? 1 : 10
    redirect_to question_path(first_question_id)
  end
end
