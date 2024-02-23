class ResultsController < ApplicationController
  def index
  end

  def show
    @result = Result.find(params[:id])
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
