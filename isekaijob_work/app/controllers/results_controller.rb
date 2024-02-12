class ResultsController < ApplicationController
  def index
    yes_count = UserChoice.joins(:choice).where(choices: { score: 1 }).count
    no_count = UserChoice.joins(:choice).where(choices: { score: 0 }).count
    
    # もしyes_count または no_count が nil であれば、0 として扱います
    yes_count ||= 0
    no_count ||= 0

    # YESのカウントがNOのカウントより多い場合は 'A'、そうでない場合は 'B' とする
    result_text = yes_count > no_count ? 'A' : 'B'
    # Result レコードを取得または初期化する
    # ここでは find_or_initialize_by メソッドを使用して、もしレコードが見つからない場合は新しいインスタンスを作成します
    @result = Result.find_or_initialize_by(result_text: result_text)
    @result.count = [yes_count, no_count].max
    @result.save if @result.new_record?
  end

  def show
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
