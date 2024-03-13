class ResultsController < ApplicationController
  def index
  end

  def show
    @result = Result.find(params[:id])

    # データベースからimage_url_magicalgirl_gazoの値を取得し、ビューに表示するために、
    # session[:result_id]に対応するJobProfileを検索し、インスタンス変数に格納
    @job_profile = JobProfile.find_by(result_id: @result.id)

    # application.html.erb を読み込まない
    render :layout => false
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
