class CreateRentAcceptances < ActiveRecord::Migration
  def change
    create_table :rent_acceptances do |t|
      t.integer :rental_id
      t.integer :tenant_id
      t.string :stripe_account_id
      t.string :stripe_secret_key
      t.string :stripe_publishable_key
      t.string :stripe_bank_account_id
      t.string :bank_name
      t.string :bank_account_number_last_four
      t.date :start_date
      t.date :end_date
      t.decimal :amount, precision: 8, scale: 2
      t.timestamps null: false

      t.index :rental_id
      t.index :tenant_id
    end
  end
end
