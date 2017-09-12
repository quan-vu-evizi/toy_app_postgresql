class AddActiveToPlans < ActiveRecord::Migration
  def up
    add_column :plans, :active, :boolean, default: false, null: false

    Plan.reset_column_information

    say_with_time "Seeding existing plan active based on names..." do
      Plan.where(code: ["homeowner", "housemate"]).update_all active: true
    end
  end

  def down
    remove_column :plans, :active
  end
end
