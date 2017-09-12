class AddDraftToAvailableAtToRentals < ActiveRecord::Migration
  def change
    change_table :rentals do |t|
      t.datetime :draft_to_available_at
    end
  end
end
