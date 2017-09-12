class CreateRentPayments < ActiveRecord::Migration
  def change
    create_table :rent_payments do |t|
      t.integer :rent_subscription_id
      t.decimal :amount, precision: 8, scale: 2
      t.string :stripe_card_type
      t.string :stripe_card_name
      t.string :stripe_card_last_four
      t.string :stripe_charge_id
      t.string :stripe_invoice_id
      t.string :stripe_subscription_id
      t.string :stripe_event_id
      t.datetime :created_at, null: false

      t.index :rent_subscription_id
      t.index :stripe_event_id
    end

    create_table :rent_payment_failures do |t|
      t.integer :rent_subscription_id
      t.string :stripe_event_id
      t.string :stripe_charge_id
      t.boolean :subscription_deleted, default: false, null: false
      t.decimal :amount, precision: 8, scale: 2
      t.string :failure_code
      t.string :failure_message
      t.datetime :created_at, null: false

      t.index :rent_subscription_id
      t.index :stripe_event_id
    end
  end
end
