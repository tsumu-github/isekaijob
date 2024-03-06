class CreateResults < ActiveRecord::Migration[7.0]
  def change
    create_table :results do |t|
      t.text :result_text
      t.integer :count

      t.timestamps
    end
  end
end
