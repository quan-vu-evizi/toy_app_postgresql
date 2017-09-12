class AllowStripeChargeNullOnPayments < ActiveRecord::Migration
  def change
    change_column_null :payments, :stripe_charge, true
    change_column_default :payments, :stripe_charge, nil
  end
end
