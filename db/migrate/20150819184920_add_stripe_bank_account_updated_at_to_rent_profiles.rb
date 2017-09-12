class AddStripeBankAccountUpdatedAtToRentProfiles < ActiveRecord::Migration
  def change
    change_table :rent_profiles do |t|
      t.datetime :stripe_bank_account_updated_at
    end
  end
end
