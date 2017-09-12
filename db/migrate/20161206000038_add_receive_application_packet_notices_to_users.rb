class AddReceiveApplicationPacketNoticesToUsers < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.boolean :receive_application_packet_notices, default: true
      t.datetime :application_packet_notices_unsubscribed_at
    end
  end
end
