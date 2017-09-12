class RemovePaymentMethodsFromLease < ActiveRecord::Migration
  def up
    remove_column :leases, :payment_methods
  end

  def down
    add_column :leases, :payment_methods, :string, default: "Check, Money Order"
  end
end
