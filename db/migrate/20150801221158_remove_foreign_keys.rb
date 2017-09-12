class RemoveForeignKeys < ActiveRecord::Migration
  def up
    remove_foreign_key :favorites, :rentals
    remove_foreign_key :favorites, :users
    remove_foreign_key :leases, :rentals
    remove_foreign_key :leases, column: :tenant_id
    remove_foreign_key :matches, :rentals
    remove_foreign_key :matches, column: :renter_id
    remove_foreign_key :rentals, column: :owner_id
  end

  def down
    add_foreign_key :favorites, :rentals
    add_foreign_key :favorites, :users
    add_foreign_key :leases, :rentals
    add_foreign_key :leases, :users, column: :tenant_id
    add_foreign_key :matches, :rentals
    add_foreign_key :matches, :users, column: :renter_id
    add_foreign_key :rentals, :users, column: :owner_id
  end
end
