class ChangeRentalListingDefaultValues < ActiveRecord::Migration
  def change
    change_column_default :rentals, :allow_craigslist_listing, false
    change_column_default :rentals, :allow_zillow_listing, false
  end
end
