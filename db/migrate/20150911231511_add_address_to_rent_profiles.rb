class AddAddressToRentProfiles < ActiveRecord::Migration
  def change
    change_table :rent_profiles do |t|
      t.string :address_line_1
      t.string :address_line_2
      t.string :address_city
      t.string :address_state
      t.string :address_postal_code
    end
  end
end
