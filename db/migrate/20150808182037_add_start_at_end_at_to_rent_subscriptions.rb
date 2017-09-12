class AddStartAtEndAtToRentSubscriptions < ActiveRecord::Migration
  def change
    change_table :rent_subscriptions do |t|
      t.datetime :start_at
      t.datetime :end_at
    end
  end
end
