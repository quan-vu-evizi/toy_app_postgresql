class AddCodeToPlans < ActiveRecord::Migration
  def up
    add_column :plans, :code, :string

    Plan.reset_column_information

    say_with_time "Seeding existing plan codes based on names..." do
      Plan.find_by(name: "Basic").try!(:update_column, :code, "homeowner")
      Plan.find_by(name: "Background Check").try!(:update_column, :code, "housemate")
    end
  end

  def down
    remove_column :plans, :code
  end
end
