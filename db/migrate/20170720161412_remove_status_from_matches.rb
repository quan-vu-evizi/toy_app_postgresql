class RemoveStatusFromMatches < ActiveRecord::Migration
  def up
    remove_column :matches, :status
  end

  def down
    add_column :matches, :status, :integer, default: 0
  end
end
