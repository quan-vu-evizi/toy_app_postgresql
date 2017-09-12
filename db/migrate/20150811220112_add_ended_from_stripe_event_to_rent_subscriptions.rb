class AddEndedFromStripeEventToRentSubscriptions < ActiveRecord::Migration
  def change
    change_table :rent_subscriptions do |t|
      t.string :ended_from_stripe_event_id
    end
  end
end
