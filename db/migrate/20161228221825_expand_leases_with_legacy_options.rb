class ExpandLeasesWithLegacyOptions < ActiveRecord::Migration
  def change
    change_table :leases do |t|
      t.boolean :phone_included, default: false, null: false
      t.integer :air_conditioning
    end
  end
end
