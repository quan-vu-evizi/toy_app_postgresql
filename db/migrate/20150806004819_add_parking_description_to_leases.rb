class AddParkingDescriptionToLeases < ActiveRecord::Migration
  def change
    change_table :leases do |t|
      t.string :parking_description
    end
  end
end
