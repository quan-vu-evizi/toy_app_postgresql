class RemoveEndDateFromRentProfiles < ActiveRecord::Migration
  def up
    remove_column :rent_profiles, :end_date
  end

  def down
    add_column :rent_profiles, :end_date, :date
  end
end
