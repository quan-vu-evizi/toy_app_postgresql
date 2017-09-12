class AddSearchCoordinatesToUsers < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.string :search_place
      t.st_point :search_coordinates, geographic: true
      t.integer :search_radius
    end

    add_index :users, :search_coordinates, using: :gist
  end
end
