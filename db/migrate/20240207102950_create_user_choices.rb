class CreateUserChoices < ActiveRecord::Migration[7.0]
  def change
    create_table :user_choices do |t|
      t.references :question, null: false, foreign_key: true
      t.references :choice, null: false, foreign_key: true

      t.timestamps
    end
  end
end
