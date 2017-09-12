class ChangeDefaultOnPrefSmoking < ActiveRecord::Migration
  def change
    change_column :users, :pref_smoking, :integer, default: 0
    change_column :rentals, :pref_smoking, :integer, default: 0
  end
end
