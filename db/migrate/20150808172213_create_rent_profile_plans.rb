class CreateRentProfilePlans < ActiveRecord::Migration
  def change
    create_table :rent_profile_plans do |t|
      t.integer :rent_profile_id
      t.string :stripe_plan_id
      t.decimal :amount, precision: 8, scale: 2
      t.datetime :start_at
      t.datetime :end_at
      t.timestamps null: false

      t.index :rent_profile_id
    end
  end
end
