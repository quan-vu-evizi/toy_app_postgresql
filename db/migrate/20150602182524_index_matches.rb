class IndexMatches < ActiveRecord::Migration
  def change
    add_index :matches, [:rental_id, :renter_id], unique: true
  end
end
