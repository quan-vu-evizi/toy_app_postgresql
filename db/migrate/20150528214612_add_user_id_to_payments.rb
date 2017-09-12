class AddUserIdToPayments < ActiveRecord::Migration
  def change
    Payment.delete_all
    add_column :payments, :user_id, :integer, null: false
  end
end
