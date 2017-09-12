class AddAvailableAtToUser < ActiveRecord::Migration
  def change
    add_column :users, :available_at, :date
  end
end
