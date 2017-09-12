class AddPriceToPlans < ActiveRecord::Migration
  def change
    add_column :plans, :price, :decimal, null: false, default: 0, precision: 8, scale: 2
  end
end
