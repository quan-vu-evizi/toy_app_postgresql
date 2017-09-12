class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.integer :owner_id, null: false
      t.string :title
      t.string :subtitle
      t.text :description
      t.integer :price
      t.date :available_at
      t.integer :status, null: false, default: 0
      t.jsonb :data
      t.st_point :coordinates, geographic: true
      t.timestamps null: false
    end
    add_index :rooms, :owner_id
    add_index :rooms, [:price, :available_at, :status]
    add_index :rooms, :data, using: :gin
    add_index :rooms, :coordinates, using: :gist
  end
end
