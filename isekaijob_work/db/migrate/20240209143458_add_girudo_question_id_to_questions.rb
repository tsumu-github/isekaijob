class AddGirudoQuestionIdToQuestions < ActiveRecord::Migration[7.0]
  def change
    add_reference :questions, :girudo_question, null: false, foreign_key: true
  end
end
