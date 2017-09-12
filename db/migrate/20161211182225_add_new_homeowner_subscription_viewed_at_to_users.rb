class AddNewHomeownerSubscriptionViewedAtToUsers < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.datetime :new_homeowner_subscription_viewed_at
    end
  end
end
