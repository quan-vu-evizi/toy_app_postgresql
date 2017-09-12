class UpdatePlanNames < ActiveRecord::Migration
  def up
    Plan.where(name: "Premium").update_all name: "Premier"
    Plan.where(name: "Basic Plus").update_all name: "Premium"
  end
  
  def down
    Plan.where(name: "Premium").update_all name: "Basic Plus"
    Plan.where(name: "Premier").update_all name: "Premium"
  end
end
