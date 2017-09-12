class AddReceiveNewMatchesNoticesToUsers < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.boolean :receive_new_matches_notices, default: true, null: false
      t.datetime :new_matches_notices_unsubscribed_at
    end
  end
end
