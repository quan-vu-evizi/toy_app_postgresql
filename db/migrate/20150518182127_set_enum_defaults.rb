class SetEnumDefaults < ActiveRecord::Migration
  def change
    %i(
      pref_languages
      pref_gender
      pref_smoking
      pref_pets
      pref_lease_term
      share_type
      furnished
      entrance
      stairs
      kitchen
      utilities
      amenities
      extras
      safety
      terms
    ).each do |column|
      change_column :rentals, column, :integer, null: false, default: 0
    end

    %i(
      landlord_history
      pets
      pref_pets
      smoking
      pref_smoking
      pref_lease_term
      languages
      pref_share_type
      pref_entrance
      pref_bath
      pref_kitchen
      pref_furnished
      pref_stairs
    ).each do |column|
      change_column :users, column, :integer, null: false, default: 0
    end
  end
end
