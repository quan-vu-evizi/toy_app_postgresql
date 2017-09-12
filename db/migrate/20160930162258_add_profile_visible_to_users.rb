class AddProfileVisibleToUsers < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.boolean :profile_visible, null: false, default: true
    end
  end
end
