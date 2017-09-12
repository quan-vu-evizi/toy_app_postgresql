class AddAllowCraigslistListingToRentals < ActiveRecord::Migration
  def up
    change_table :rentals do |t|
      t.boolean :allow_craigslist_listing, null: false, default: true
    end

    say_with_time("Defaulting rentals.allow_craigslist_listing to false for all existing rentals...") do
      Rental.update_all allow_craigslist_listing: false
    end
  end

  def down
    remove_column :rentals, :allow_craigslist_listing
  end
end
