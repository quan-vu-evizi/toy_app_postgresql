class AddAirConditioningToRentals < ActiveRecord::Migration
  def change
    change_table :rentals do |t|
      t.integer :air_conditioning
    end
  end
end
