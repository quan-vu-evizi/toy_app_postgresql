class AddExpiredToAvailableAtToRentals < ActiveRecord::Migration
  def change
    change_table :rentals do |t|
      t.datetime :expired_to_available_at
    end
  end
end
