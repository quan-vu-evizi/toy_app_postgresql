class AddStripeAccountIdToStripeEvents < ActiveRecord::Migration
  def change
    change_table :stripe_events do |t|
      t.string :stripe_account_id
      t.index :stripe_account_id
    end
  end
end
