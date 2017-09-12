class SetDefaultGender < ActiveRecord::Migration
  def change
    change_column :users, :gender, :integer, default: 0, null: false
  end
end
