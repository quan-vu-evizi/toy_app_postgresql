class AddBackgroundCheckCompletedAtToMatches < ActiveRecord::Migration
  def up
    add_column :matches, :background_check_completed_at, :datetime

    Match.reset_column_information

    say_with_time "Seeding matches.background_check_completed_at based on presence of references..." do
      Match.joins(:renter).where("
        users.checkr_candidate_id IS NOT NULL 
        AND users.checkr_report_id IS NOT NULL 
        AND matches.references IS NOT NULL
        AND matches.application_packet_requested_at IS NOT NULL
      ").update_all("background_check_completed_at = application_packet_requested_at")
    end
  end

  def down
    remove_column :matches, :background_check_completed_at
  end
end
