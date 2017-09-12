class AddNameAndBirthdateToRentProfiles < ActiveRecord::Migration
  def change
    change_table :rent_profiles do |t|
      t.string :first_name
      t.string :last_name
      t.date :birthdate
    end
  end
end
