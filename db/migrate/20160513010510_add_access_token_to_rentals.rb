class AddAccessTokenToRentals < ActiveRecord::Migration
  def change
    change_table :rentals do |t|
      t.string :access_token
      t.index :access_token, unique: true
    end
  end
end
