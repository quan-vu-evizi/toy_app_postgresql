class AddStatusToMatches < ActiveRecord::Migration
  def change
    add_column :matches, :status, :integer, null: false, default: 0
    add_column :matches, :failure_reason, :integer
  end
end
