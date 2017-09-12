class RemoveEnhancedBackgroundCheck < ActiveRecord::Migration
  def up
    Plan.where(name: "Enhanced Background Check").destroy_all
  end

  def down
    Plan.create!(
      name:        "Enhanced Background Check",
      description: "Silvernest will perform an enhanced background check.",
      duration:    3650,
      price:       49.00,
      roles:       %i(pay_rent my_background_enhanced),
    )
  end
end
