class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.integer :user_id, null: false
      t.integer :room_id, null: false
      t.timestamps null: false
    end
    add_index :favorites, :user_id
    add_index :favorites, :room_id
    add_foreign_key :favorites, :rooms
    add_foreign_key :favorites, :users
  end
end
