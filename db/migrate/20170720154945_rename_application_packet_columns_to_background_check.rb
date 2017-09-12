class RenameApplicationPacketColumnsToBackgroundCheck < ActiveRecord::Migration
  def change
    rename_column :matches, :application_packet_requested_at, :background_check_requested_at
    rename_column :matches, :last_application_packet_reminder_sent_at, :last_background_check_reminder_sent_at
    rename_column :matches, :owner_viewed_application_packet_at, :owner_viewed_background_check_at
    rename_column :users, :receive_application_packet_notices, :receive_background_check_notices
    rename_column :users, :application_packet_notices_unsubscribed_at, :background_check_notices_unsubscribed_at
  end
end
