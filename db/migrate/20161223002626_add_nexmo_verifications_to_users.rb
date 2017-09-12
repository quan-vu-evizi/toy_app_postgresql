class AddNexmoVerificationsToUsers < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.datetime :phone_verified_at
      t.datetime :nexmo_request_at
      t.string :nexmo_request_id
      t.integer :nexmo_attempts, null: false, default: 0
    end
  end
end
