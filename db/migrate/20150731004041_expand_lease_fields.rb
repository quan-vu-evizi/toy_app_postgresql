class ExpandLeaseFields < ActiveRecord::Migration
  def change
    change_table :leases do |t|
      t.string :owner_legal_name
      t.string :tenant_legal_name
      t.string :premises_name
      t.string :premises_owner_exclusive_use
      t.boolean :parking, default: false, null: false
      t.boolean :parking_included_in_rent, default: false, null: false
      t.decimal :parking_rent, precision: 8, scale: 2
      t.boolean :storage_space, default: false, null: false
      t.string :storage_space_description
      t.string :payment_methods, default: "Check, Money Order"
      t.decimal :late_fee_per_day, precision: 8, scale: 2, default: 10
      t.integer :guest_maximum_stay, default: 10
      t.text :additional_provisions
      t.string :trash_responsibility
      t.string :snow_removal_responsibility
      t.integer :maintenance
      t.boolean :lead_present, default: false, null: false
      t.text :lead_present_explanation
    end
  end
end
