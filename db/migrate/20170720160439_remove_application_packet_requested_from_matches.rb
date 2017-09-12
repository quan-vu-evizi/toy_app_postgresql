class RemoveApplicationPacketRequestedFromMatches < ActiveRecord::Migration
  def up
    remove_column :matches, :application_packet_requested
  end

  def down
    add_column :matches, :application_packet_requested, :boolean, default: false, null: false
  end
end
