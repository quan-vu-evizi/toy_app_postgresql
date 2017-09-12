class ExtendRentSubscriptionsForBankTransfers < ActiveRecord::Migration
  def change
    change_table :rent_profiles do |t|
      t.integer :payment_type
    end

    change_table :rent_subscriptions do |t|
      t.boolean :bank_account_verified, default: false, null: false
      t.string :stripe_bank_account_id
      t.string :bank_name
      t.string :bank_account_number_last_four
      t.datetime :stripe_bank_account_updated_at
    end
  end
end
