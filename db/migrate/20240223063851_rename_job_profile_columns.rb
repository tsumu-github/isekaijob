class RenameJobProfileColumns < ActiveRecord::Migration[7.0]
  def change
    rename_column :job_profiles, :job_image, :image_url_magicalgirl_gazo
    rename_column :job_profiles, :job_name_isekai, :image_url_magicalgirl_name
    rename_column :job_profiles, :unique_skill, :strengths
    rename_column :job_profiles, :gendai_job, :job
  end
end
