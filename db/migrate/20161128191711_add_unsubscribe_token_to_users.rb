class AddUnsubscribeTokenToUsers < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.string :unsubscribe_token, index: true
    end
  end
end
