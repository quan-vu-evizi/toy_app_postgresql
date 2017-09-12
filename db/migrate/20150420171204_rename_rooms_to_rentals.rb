class RenameRoomsToRentals < ActiveRecord::Migration
  def change
    rename_table :rooms, :rentals
    rename_column :favorites, :room_id, :rental_id
    rename_column :matches, :room_id, :rental_id
    rename_column :leases, :room_id, :rental_id
  end
end
