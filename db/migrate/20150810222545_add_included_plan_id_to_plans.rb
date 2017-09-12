class AddIncludedPlanIdToPlans < ActiveRecord::Migration
  def change
    change_table :plans do |t|
      t.integer :included_plan_id
    end
  end
end
