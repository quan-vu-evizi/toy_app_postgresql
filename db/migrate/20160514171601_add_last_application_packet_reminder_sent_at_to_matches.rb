class AddLastApplicationPacketReminderSentAtToMatches < ActiveRecord::Migration
  def change
    change_table :matches do |t|
      t.datetime :last_application_packet_reminder_sent_at
    end
  end
end
