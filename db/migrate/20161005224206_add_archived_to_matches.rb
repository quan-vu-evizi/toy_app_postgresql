class AddArchivedToMatches < ActiveRecord::Migration
  def change
    change_table :matches do |t|
      t.datetime :archived_at
      t.references :archived_by, index: true
    end
  end
end
