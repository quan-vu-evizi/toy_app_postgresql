class AddCheckrToUsers < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.string :checkr_candidate_id
      t.string :checkr_report_id
      t.string :checkr_report_status  # 'pending', 'clear', 'consider', 'canceled', 'disputed'

      t.index :checkr_candidate_id
      t.index :checkr_report_id
    end
  end
end
