class CreateCheckrEvents < ActiveRecord::Migration
  def change
    create_table :checkr_events do |t|
      t.integer :user_id
      t.string :event_type, null: false
      t.json :event_data
      t.string :report_status
      t.string :checkr_event_id
      t.datetime :checkr_created_at
      t.timestamps null: false

      t.index :user_id
      t.index :checkr_event_id
    end
  end
end
