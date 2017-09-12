class ExpandMatchesForApplicationPacket < ActiveRecord::Migration
  def change
    change_table :matches do |t|
      t.text :references
      t.string :emergency_contact_name
      t.string :emergency_contact_phone
    end
  end
end
