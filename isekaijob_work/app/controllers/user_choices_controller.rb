class UserChoicesController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def create
    # 現在の質問を見つける
    question = Question.find(params[:question_id])
    # 選択肢を見つける
    choice = Choice.find_by(question_id: question.id, choice_text: params[:choice_text])
    # ユーザーの選択を記録する
    UserChoice.create!(question_id: question.id, choice_id: choice.id)
    
    # 次の質問があればそこにリダイレクト、なければ結果の計算へ
    next_question = question.next_question # 次の質問を取得するメソッドを仮定
    if next_question
      redirect_to question_path(next_question)
    else
      redirect_to calculate_results_path
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

end

private

  # 結果の計算とリダイレクト
  def calculate_results
    # すべてのYESとNOのポイントの合計を計算
    yes_count = UserChoice.joins(:choice).where(choices: { score: 1 }).count
    no_count = UserChoice.joins(:choice).where(choices: { score: 0 }).count

    # 結果のテキストを決定
    result_text = yes_count > no_count ? 'A' : 'B'
    
    # 結果を保存してリダイレクト
    result = Result.create!(result_text: result_text, count: [yes_count, no_count].max)
    redirect_to result_path(result)
  end
