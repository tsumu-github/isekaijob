class CreateJobProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :job_profiles do |t|
      t.references :result, null: false, foreign_key: true, unique: true
      t.text :job_image
      t.text :job_name_isekai
      t.text :content
      t.text :status
      t.text :unique_skill
      t.text :zyakuten
      t.text :refresh
      t.text :gendai_job
      t.text :rare
      t.text :compatibility

      t.timestamps
    end
  end
end
