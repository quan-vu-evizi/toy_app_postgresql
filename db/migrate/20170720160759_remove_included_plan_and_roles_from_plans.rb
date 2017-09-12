class RemoveIncludedPlanAndRolesFromPlans < ActiveRecord::Migration
  def up
    remove_column :plans, :included_plan_id
    remove_column :plans, :roles
  end

  def down
    add_column :plans, :included_plan_id, :integer
    add_column :plans, :roles, :integer, null: false, default: 0
  end
end
