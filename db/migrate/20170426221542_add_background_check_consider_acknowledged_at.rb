class AddBackgroundCheckConsiderAcknowledgedAt < ActiveRecord::Migration
  def change
    change_table :matches do |t|
      t.datetime :background_check_consider_acknowledged_at
    end
  end
end
