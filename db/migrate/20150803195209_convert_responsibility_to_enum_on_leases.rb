# We've decided to convert responsibility fields to enums. Don't care about existing data.
class ConvertResponsibilityToEnumOnLeases < ActiveRecord::Migration
  def up
    remove_column :leases, :trash_responsibility
    remove_column :leases, :snow_removal_responsibility
    add_column :leases, :trash_responsibility, :integer
    add_column :leases, :snow_removal_responsibility, :integer
  end

  def down
    remove_column :leases, :trash_responsibility
    remove_column :leases, :snow_removal_responsibility
    add_column :leases, :trash_responsibility, :string
    add_column :leases, :snow_removal_responsibility, :string
  end
end
