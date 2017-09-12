class AddViewTrackingTimestampsToMatches < ActiveRecord::Migration
  def change
    change_table :matches do |t|
      t.datetime :owner_viewed_application_packet_at
      t.datetime :owner_downloaded_lease_at
      t.datetime :housemate_downloaded_lease_at
    end
  end
end
