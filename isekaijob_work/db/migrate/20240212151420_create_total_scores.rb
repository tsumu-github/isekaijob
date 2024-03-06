class CreateTotalScores < ActiveRecord::Migration[7.0]
  def change
    create_table :total_scores do |t|
      t.integer :total_score, default: 0
      t.timestamps
    end
  end
end
