class AddAllowZillowListingToRentals < ActiveRecord::Migration
  def change
    change_table :rentals do |t|
      t.boolean :allow_zillow_listing, default: true, null: false
    end

    say_with_time "Changing all existing rentals to have allow_zillow_listing: false" do
      Rental.reset_column_information
      Rental.update_all allow_zillow_listing: false
    end
  end
end
