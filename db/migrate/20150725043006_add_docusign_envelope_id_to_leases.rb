class AddDocusignEnvelopeIdToLeases < ActiveRecord::Migration
  def change
    change_table :leases do |t|
      t.string :docusign_envelope_id
    end
  end
end
