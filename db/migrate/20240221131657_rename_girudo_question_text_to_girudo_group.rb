class RenameGirudoQuestionTextToGirudoGroup < ActiveRecord::Migration[7.0]
  def change
    rename_column :girudo_questions, :girudo_question_text, :girudo_group
  end
end
