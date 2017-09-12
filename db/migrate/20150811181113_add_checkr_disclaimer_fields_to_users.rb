class AddCheckrDisclaimerFieldsToUsers < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.datetime :checkr_disclaimer_agreed_at
      t.string :checkr_disclaimer_user_ip
    end
  end
end
