class QuestionsController < ApplicationController
  def index
  end

  def show
    @question = Question.find(params[:id])
    @next_question = Question.where(girudo_question_id: @question.girudo_question_id)
                             .where('id > ?', @question.id).first
    #!!!!! 1.トータルスコアを保存するDB(もしくはカラム)を作る
    #!!!!! 2.YES/NOどちらがクリックされたか判断できるようにする
    #!!!!! 3.YESの場合、トータルスコアに１加算する
    #!!!!! 4.results_controller.rbでyes_count/no_countではなくトータルスコアを値を取れるようにする
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
