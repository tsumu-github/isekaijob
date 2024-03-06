class CreateGirudoQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :girudo_questions do |t|
      t.text :girudo_question_text

      t.timestamps
    end
  end
end
