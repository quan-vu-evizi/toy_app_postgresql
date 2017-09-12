class AddBlockScoreToUsers < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.string :blockscore_person_id
      t.string :blockscore_status
      t.datetime :blockscore_disclaimer_agreed_at
      t.string :blockscore_disclaimer_user_ip
      t.boolean :id_verified
    end
  end
end
