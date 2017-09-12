class AddCreatedByToMatches < ActiveRecord::Migration
  def change
    change_table :matches do |t|
      t.references :created_by, index: true
    end

    # Before this point, homeowners could not create matches...
    say_with_time "Assuming all existing matches were created by the housemate..." do
      Match.connection.execute "UPDATE matches SET created_by_id = renter_id"
    end
  end
end
