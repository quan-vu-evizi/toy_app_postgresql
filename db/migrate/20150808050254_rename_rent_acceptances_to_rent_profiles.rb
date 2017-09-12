class RenameRentAcceptancesToRentProfiles < ActiveRecord::Migration
  def change
    rename_table :rent_acceptances, :rent_profiles
  end
end
