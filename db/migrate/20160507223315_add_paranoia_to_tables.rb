class AddParanoiaToTables < ActiveRecord::Migration
  def change
    [:users].each do |table|
      add_column table, :deleted_at, :datetime
      add_index table, :deleted_at
    end
  end
end
