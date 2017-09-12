class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.string :parent_type, null: false
      t.integer :parent_id, null: false
      t.json :stripe_charge, null: false

      t.timestamps null: false
    end
    add_index :payments, [:parent_type, :parent_id]
  end
end
