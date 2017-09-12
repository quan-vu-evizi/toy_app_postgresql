class RemovePrefPetsAndPrefSmokingFromRentals < ActiveRecord::Migration
  def change
    remove_column :rentals, :pref_smoking
    remove_column :rentals, :pref_pets
  end
end
