class AddTimestampsToRentals < ActiveRecord::Migration
  def change
    change_table :rentals do |t|
      t.datetime :available_to_rented_at
      t.datetime :available_to_deleted_at
      t.datetime :rented_to_available_at
      t.datetime :deleted_to_available_at
    end
  end
end
