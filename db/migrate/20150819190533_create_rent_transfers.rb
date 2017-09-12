class CreateRentTransfers < ActiveRecord::Migration
  def change
    create_table :rent_transfers do |t|
      t.integer :rent_profile_id
      t.string :stripe_event_id
      t.string :stripe_transfer_id
      t.decimal :amount, precision: 8, scale: 2
      t.timestamps null: false

      t.index :rent_profile_id
    end
  end
end
