class AddToStripeBankAccountIdToRentTransfers < ActiveRecord::Migration
  def change
    change_table :rent_transfers do |t|
      t.string :to_stripe_bank_account_id
    end
    
    change_table :rent_transfer_failures do |t|
      t.string :to_stripe_bank_account_id
    end
  end
end
