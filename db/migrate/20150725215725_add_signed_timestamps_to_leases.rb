class AddSignedTimestampsToLeases < ActiveRecord::Migration
  def change
    change_table :leases do |t|
      t.datetime :prepared_at
      t.datetime :tenant_signed_at
      t.datetime :landlord_signed_at
    end
  end
end
