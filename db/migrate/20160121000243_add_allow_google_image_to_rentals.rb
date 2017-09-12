class AddAllowGoogleImageToRentals < ActiveRecord::Migration
  def up
    change_table :rentals do |t|
      t.boolean :allow_google_image_as_photo, null: false, default: true
    end

    say_with_time("Defaulting rentals.allow_google_image_as_photo to false for all existing rentals...") do
      Rental.update_all allow_google_image_as_photo: false
    end
  end

  def down
    remove_column :rentals, :allow_google_image_as_photo
  end
end
