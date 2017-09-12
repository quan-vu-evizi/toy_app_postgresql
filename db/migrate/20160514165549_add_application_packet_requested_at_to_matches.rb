# This column ow exists alongside application_packet_requested (boolean).
# REFACTOR: They should be consolidated to just use the timestamp.
#
class AddApplicationPacketRequestedAtToMatches < ActiveRecord::Migration
  def change
    change_table :matches do |t|
      t.datetime :application_packet_requested_at
    end
  end
end
