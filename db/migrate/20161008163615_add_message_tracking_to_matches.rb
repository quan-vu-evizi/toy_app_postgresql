class AddMessageTrackingToMatches < ActiveRecord::Migration
  def change
    change_table :matches do |t|
      t.integer :owner_messages_count, default: 0, null: false
      t.datetime :last_owner_message_at
      t.integer :housemate_messages_count, default: 0, null: false
      t.datetime :last_housemate_message_at
    end
  end
end
