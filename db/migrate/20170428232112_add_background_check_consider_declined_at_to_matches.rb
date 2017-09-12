class AddBackgroundCheckConsiderDeclinedAtToMatches < ActiveRecord::Migration
  def change
    change_table :matches do |t|
      t.datetime :background_check_consider_declined_at
    end
  end
end
