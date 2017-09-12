class AddAmountToPayments < ActiveRecord::Migration
  def change
    add_column :payments, :amount, :numeric, null: false, precision: 8, scale: 2
  end
end
