class CreateLeases < ActiveRecord::Migration
  def change
    create_table :leases do |t|
      t.integer :room_id, null: false
      t.integer :tenant_id, null: false
      t.text :url
      t.timestamps null: false
    end
    add_index :leases, :room_id
    add_index :leases, :tenant_id
    add_foreign_key :leases, :rooms
    add_foreign_key :leases, :users, column: :tenant_id
  end
end
