class AddTimestampsToMatches < ActiveRecord::Migration
  def change
    change_table :matches do |t|
      t.datetime :requested_to_accepted_at
      t.datetime :requested_to_failed_at
      t.datetime :accepted_to_failed_at
    end
  end
end
