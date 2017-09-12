class AddCurrentOccupantCountToRentals < ActiveRecord::Migration
  def change
    add_column :rentals, :current_occupant_count, :integer
  end
end
