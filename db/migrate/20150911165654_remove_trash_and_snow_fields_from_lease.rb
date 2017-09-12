class RemoveTrashAndSnowFieldsFromLease < ActiveRecord::Migration
  def up
    remove_column :leases, :trash_responsibility
    remove_column :leases, :snow_removal_responsibility
  end

  def down
    add_column :leases, :trash_responsibility, :integer
    add_column :leases, :snow_removal_responsibility, :integer
  end
end
