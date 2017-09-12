class AddEndedFromRentBillingFailure < ActiveRecord::Migration
  def change
    change_table :rent_subscriptions do |t|
      t.boolean :ended_from_rent_billing_failure
    end
  end
end
