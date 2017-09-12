class AddBackgroundCheckApprovedTrackingToMatches < ActiveRecord::Migration
  def change
    change_table :matches do |t|
      t.datetime :background_check_access_approved_at
      t.datetime :background_check_access_declined_at
    end
  end
end
