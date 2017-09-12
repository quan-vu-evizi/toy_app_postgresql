class SeparatePlanCodeFromRole < ActiveRecord::Migration
  def up
    add_column :plans, :role, :string

    Plan.reset_column_information

    Plan.where(active: true, code: "homeowner").update_all role: "homeowner"
    Plan.where(active: true, code: "housemate").update_all role: "housemate"
  end

  def down
    remove_column :plans, :role
  end
end
