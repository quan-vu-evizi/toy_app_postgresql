class AddApplicationPacketRequestedToMatches < ActiveRecord::Migration
  def change
    change_table :matches do |t|
      t.boolean :application_packet_requested, default: false, null: false
    end
  end
end
