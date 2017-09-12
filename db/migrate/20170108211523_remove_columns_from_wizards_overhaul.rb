class RemoveColumnsFromWizardsOverhaul < ActiveRecord::Migration
  def up
    remove_column :rentals, :address2
    remove_column :rentals, :amenities
    remove_column :rentals, :extras
    remove_column :rentals, :safety
    remove_column :rentals, :utilities

    remove_column :users, :address
    remove_column :users, :address2
    remove_column :users, :city
    remove_column :users, :state
    remove_column :users, :pref_share_type
    remove_column :users, :pref_entrance
    remove_column :users, :pref_private_bathroom
    remove_column :users, :pref_furnished
    remove_column :users, :pref_stairs
    remove_column :users, :languages
    remove_column :users, :renter_other
  end

  def down
    add_column :rentals, :address2, :string
    add_column :rentals, :amenities, :integer, null: false, default: 0
    add_column :rentals, :extras, :integer, null: false, default: 0
    add_column :rentals, :safety, :integer, null: false, default: 0
    add_column :rentals, :utilities, :integer, null: false, default: 0

    add_column :users, :address, :string
    add_column :users, :address2, :string
    add_column :users, :city, :string
    add_column :users, :state, :string
    add_column :users, :pref_share_type, :integer, null: false, default: 0
    add_column :users, :pref_entrance, :integer, null: false, default: 0
    add_column :users, :pref_private_bathroom, :integer, null: false, default: 0
    add_column :users, :pref_furnished, :integer, null: false, default: 0
    add_column :users, :pref_stairs, :integer, null: false, default: 0
    add_column :users, :languages, :integer, null: false, default: 0
    add_column :users, :renter_other, :text
  end
end
