class QuestionsController < ApplicationController
  def index
  end

  def show
    @question = Question.find(params[:id])
    @next_question = Question.where(girudo_question_id: @question.girudo_question_id)
                             .where('id > ?', @question.id).first
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
