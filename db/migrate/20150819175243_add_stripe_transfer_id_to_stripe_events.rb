class AddStripeTransferIdToStripeEvents < ActiveRecord::Migration
  def change
    change_table :stripe_events do |t|
      t.string :stripe_transfer_id
    end
  end
end
