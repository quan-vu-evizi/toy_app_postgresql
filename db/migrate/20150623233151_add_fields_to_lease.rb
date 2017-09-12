class AddFieldsToLease < ActiveRecord::Migration
  def change
    add_column :leases, :start_date, :date
    add_column :leases, :end_date, :date
    add_column :leases, :monthly_rent, :decimal
    add_column :leases, :deposit, :decimal
  end
end
