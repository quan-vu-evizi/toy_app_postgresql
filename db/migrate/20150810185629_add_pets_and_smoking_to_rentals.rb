class AddPetsAndSmokingToRentals < ActiveRecord::Migration
  def change
    add_column :rentals, :pets, :integer
    add_column :rentals, :pref_pets, :integer, null: false, default: 0
    add_column :rentals, :pets_description, :string
    add_column :rentals, :smoking, :integer, null: false, default: 0
    add_column :rentals, :pref_smoking, :integer, null: false, default: 2
  end
end
