class MakeMatchStatusNotRequired < ActiveRecord::Migration
  def up
    change_column :matches, :status, :integer, null: true
  end

  def down
    change_column :matches, :status, :integer, null: false
  end
end
