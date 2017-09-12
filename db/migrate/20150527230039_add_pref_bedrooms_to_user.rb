class AddPrefBedroomsToUser < ActiveRecord::Migration
  def change
    add_column :users, :pref_bedrooms, :integer
    add_column :users, :pref_bathrooms, :integer
  end
end
