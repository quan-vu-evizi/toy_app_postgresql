class AddBankNameToRentPayments < ActiveRecord::Migration
  def change
    change_table :rent_payments do |t|
      t.string :bank_name
      t.string :bank_account_number_last_four
    end
  end
end
