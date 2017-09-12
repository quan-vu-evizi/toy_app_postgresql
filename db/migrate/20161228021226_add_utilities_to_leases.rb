class AddUtilitiesToLeases < ActiveRecord::Migration
  def change
    change_table :leases do |t|
      t.integer :utilities, null: false, default: 0
    end
  end
end
