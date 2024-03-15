class RemoveShareGazoFromJobProfiles < ActiveRecord::Migration[7.0]
  def change
    remove_column :job_profiles, :share_gazo, :string
  end
end
