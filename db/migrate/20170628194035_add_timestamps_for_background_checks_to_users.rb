class AddTimestampsForBackgroundChecksToUsers < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.datetime :checkr_candidate_created_at
      t.datetime :checkr_report_created_at
      t.datetime :background_check_completed_at
    end
  end
end
