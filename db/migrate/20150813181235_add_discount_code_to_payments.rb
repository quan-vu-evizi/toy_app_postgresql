class AddDiscountCodeToPayments < ActiveRecord::Migration
  def change
    change_table :payments do |t|
      t.string :discount_code
      t.json :discount
    end
  end
end
