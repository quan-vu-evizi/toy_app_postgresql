class QuestionsOverhaul1 < ActiveRecord::Migration
  def change
    change_column_null :users, :gender, true
    change_column_default :users, :gender, nil
    change_column_null :rentals, :share_type, true
    change_column_default :rentals, :share_type, nil
    change_column_null :rentals, :entrance, true
    change_column_default :rentals, :entrance, nil
    change_column_null :rentals, :kitchen, true
    change_column_default :rentals, :kitchen, nil
    change_column :rentals, :stairs, :integer, default: 1
    add_column :rentals, :max_renters, :integer, null: true
    remove_column :rentals, :bathrooms
    add_column :rentals, :bathroom, :integer, null: true
    remove_column :users, :pets
    add_column :users, :pets, :integer
    add_column :users, :pets_description, :string
    remove_column :rentals, :pref_gender
    change_column :rentals, :pref_smoking, :integer, default: 1
    change_column_null :rentals, :pref_pets, true
    change_column_default :rentals, :pref_pets, nil
    add_column :users, :sexual_orientation, :integer, default: 0, null: false
    add_column :users, :pref_gender_orientation, :integer, default: 0, null: false
    add_column :users, :faith, :integer, default: 0, null: false
    add_column :users, :work_schedule, :integer, default: 0, null: false
    remove_column :users, :family_size
    add_column :users, :renters, :integer, default: 1, null: false
    change_column :users, :pref_entrance, :integer, default: 0, null: false
    change_column :users, :pref_kitchen, :integer, default: 0, null: false
    change_column :users, :pref_furnished, :integer, default: 0, null: false
    change_column :users, :pref_stairs, :integer, default: 0, null: false
    remove_column :users, :landlord_history
    change_column_null :users, :pref_bedrooms, true
    change_column_default :users, :pref_bedrooms, nil
    remove_column :users, :pref_bathrooms
    add_column :users, :pref_private_bathroom, :integer, default: 0, null: false
    remove_column :rentals, :pref_languages
    change_column_default :users, :pref_smoking, 2
  end
end
