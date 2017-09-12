class CreateStripeEvents < ActiveRecord::Migration
  def change
    create_table :stripe_events do |t|
      t.string :stripe_event_id
      t.string :event_type
      t.json :event_data
      t.datetime :stripe_created_at
      t.string :stripe_customer_id
      t.string :stripe_subscription_id
      t.string :stripe_invoice_id
      t.string :stripe_charge_id
      t.datetime :processing_started_at
      t.datetime :processing_ended_at
      t.text :processing_messages
      t.text :processing_errors
      t.text :processing_exception
      t.timestamps null: false

      t.index :stripe_customer_id
      t.index :stripe_event_id
    end
  end
end
