class QuestionsController < ApplicationController

  def index
  end

  def show
    # 質問の最初で明示的に空にする
    if params[:id] == "1" || params[:id] == "11" || params[:id] == "21" || params[:id] == "31"
      session[:answers] = nil
    end

    # (nilなら)セッションでユーザーの選択を追跡
    session[:answers] ||= {}
    # (nilなら)初期化
    session[:answers]['YES'] ||= 0

    # 今回の質問内容取得
    @question = Question.find(params[:id])
    
    # セッションを使用してユーザーの選択を記録する
    session[:answers][@question.id] = params[:choice] if params[:choice]

    # 加算判定(YESの場合のみ)
    if params[:choice] == 'YES'
      session[:answers]['YES'] += 1
    end
    # puts session[:answers].values.count('YES')

    # 各ギルドの最後の質問IDを取得
    last_question_ids = GirudoQuestion.pluck(:id).map do |girudo_id|
      Question.where(girudo_question_id: girudo_id).order(id: :desc).first.id
    end
    # puts last_question_ids

    # 現在の質問が最後の質問であるか確認
    if last_question_ids.include?(@question.id)
      # YESが選択された回数を集計
      yes_count = session[:answers].values.count('YES')

      # 現在のギルドIDを取得
      current_girudo_id = @question.girudo_question_id

      # YESの回数に基づいてリザルト結果を決定
      result_id = case current_girudo_id
                    when 1
                      yes_count > 4 ? 1 : 2
                    when 2
                      yes_count > 4 ? 3 : 4
                    when 3
                      yes_count > 4 ? 5 : 6
                    when 4
                      yes_count > 4 ? 7 : 8
                    else
                      'Unknown'
                    end

      # リザルト結果をセッションに保存し、対応するリザルトIDのページにリダイレクト
      session[:result_id] = result_id
      redirect_to result_path(result_id) and return
    end

    # 次の質問を取得（存在する場合）
    @next_question = Question.where("id > ?", @question.id).first
  end

    #!!!!! 1.トータルスコアを保存するDB(もしくはカラム)を作る
    #!!!!! 2.YES/NOどちらがクリックされたか判断できるようにする
    #!!!!! 3.YESの場合、トータルスコアに１加算する
    #!!!!! 4.results_controller.rbでyes_count/no_countではなくトータルスコアを値を取れるようにする

    #!!!!! 戻るボタンが押されたなら前回YES/NOを判断して、YESであればsession[:answers]['YES']をマイナス1する必要がある
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
