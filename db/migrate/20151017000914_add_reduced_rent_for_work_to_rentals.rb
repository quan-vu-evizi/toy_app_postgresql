class AddReducedRentForWorkToRentals < ActiveRecord::Migration
  def change
    change_table :rentals do |t|
      t.boolean :reduced_rent_for_work, default: false, null: false
    end
  end
end
