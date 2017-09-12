class ChangeAllowCraigslistListingDefault < ActiveRecord::Migration
  def change
    change_column_default :rentals, :allow_craigslist_listing, true
  end
end
