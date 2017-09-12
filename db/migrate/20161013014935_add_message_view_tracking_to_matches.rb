class AddMessageViewTrackingToMatches < ActiveRecord::Migration
  def change
    change_table :matches do |t|
      t.datetime :owner_viewed_conversation_at
      t.datetime :housemate_viewed_conversation_at
    end
  end
end
