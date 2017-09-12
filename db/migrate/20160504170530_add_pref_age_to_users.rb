class AddPrefAgeToUsers < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.integer :pref_age, default: 1, null: false
    end
  end
end
