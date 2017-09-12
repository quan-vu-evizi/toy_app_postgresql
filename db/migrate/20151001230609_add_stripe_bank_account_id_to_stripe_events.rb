class AddStripeBankAccountIdToStripeEvents < ActiveRecord::Migration
  def change
    change_table :stripe_events do |t|
      t.string :stripe_bank_account_id
    end
  end
end
