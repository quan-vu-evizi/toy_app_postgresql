class AddForeignKeyToRooms < ActiveRecord::Migration
  def change
    add_foreign_key :rooms, :users, column: :owner_id
  end
end
