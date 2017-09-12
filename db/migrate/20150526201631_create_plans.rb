class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.text :name, null: false
      t.text :description, null: false
      t.integer :duration, null: false
      t.integer :roles, null: false, default: 0

      t.timestamps null: false
    end
  end
end
