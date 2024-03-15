class AddMagicalgirlToJobProfiles < ActiveRecord::Migration[7.0]
  def change
    add_column :job_profiles, :magicalgirl, :string
  end
end
