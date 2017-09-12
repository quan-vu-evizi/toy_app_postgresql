class CreateUserPlans < ActiveRecord::Migration
  def change
    create_table :user_plans do |t|
      t.integer :user_id, null: false
      t.integer :plan_id, null: false
      t.date :expires_at, null: false

      t.timestamps null: false
    end
    add_index :user_plans, :user_id
    add_index :user_plans, :plan_id
  end
end
