class CreateIdentities < ActiveRecord::Migration
  def change
    create_table :identities do |t|
      t.string :provider, null: false
      t.string :uid, null: false
      t.jsonb :data, null: false
      t.integer :user_id, null: false

      t.timestamps null: false
    end

    add_index :identities, :user_id
  end
end
