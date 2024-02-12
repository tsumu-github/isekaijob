class ChoicesController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def create
    choice = Choice.new(choice_params)

    if choice.save
      render json: choice, status: :created
    else
      render json: choice.errors, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def choice_params
    params.require(:choice).permit(:choice_text)
  end

end
