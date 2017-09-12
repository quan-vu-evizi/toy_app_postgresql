class AddExpiresAtToRentals < ActiveRecord::Migration
  def up
    add_column :rentals, :expires_at, :datetime
    add_index :rentals, :expires_at

    Rental.reset_column_information

    expires_at = 55.days.from_now.end_of_day
    say_with_time("Seeding all existing rentals to expire 55 days from now...") do
      Rental.update_all expires_at: expires_at
    end
  end

  def down
    remove_column :rentals, :expires_at
  end
end
