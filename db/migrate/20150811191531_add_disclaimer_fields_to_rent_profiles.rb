class AddDisclaimerFieldsToRentProfiles < ActiveRecord::Migration
  def change
    change_table :rent_profiles do |t|
      t.datetime :disclaimer_agreed_at
      t.string :disclaimer_user_ip
    end
  end
end
