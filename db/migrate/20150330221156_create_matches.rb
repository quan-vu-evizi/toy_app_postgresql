class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.integer :room_id, null: false
      t.integer :renter_id, null: false
      t.timestamps null: false
    end
    add_index :matches, :room_id
    add_index :matches, :renter_id
    add_foreign_key :matches, :rooms
    add_foreign_key :matches, :users, column: :renter_id
  end
end
