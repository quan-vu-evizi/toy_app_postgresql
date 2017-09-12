class SetFamilySizeDefault < ActiveRecord::Migration
  def up
    change_column :users, :family_size, :integer, null: false, default: 1
  end

  def down
    change_column :users, :family_size, :integer, null: true, default: nil
  end
end
