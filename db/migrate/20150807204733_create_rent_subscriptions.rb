class CreateRentSubscriptions < ActiveRecord::Migration
  def change
    create_table :rent_subscriptions do |t|
      t.integer :rental_id
      t.integer :tenant_id
      t.string :stripe_customer_id
      t.string :stripe_subscription_id
      t.string :stripe_card_type
      t.string :stripe_card_last_four
      t.string :stripe_card_name
      t.string :stripe_card_brand
      t.datetime :stripe_card_updated_at

      t.timestamps null: false

      t.index :rental_id
      t.index :tenant_id
      t.index :stripe_customer_id
      t.index :stripe_subscription_id
    end
  end
end
