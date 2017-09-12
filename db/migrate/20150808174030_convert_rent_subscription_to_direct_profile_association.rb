class ConvertRentSubscriptionToDirectProfileAssociation < ActiveRecord::Migration
  def up
    remove_column :rent_subscriptions, :rental_id
    remove_column :rent_subscriptions, :tenant_id
    add_column :rent_subscriptions, :rent_profile_id, :integer
    add_index :rent_subscriptions, :rent_profile_id
  end

  def down
    remove_column :rent_subscriptions, :rent_profile_id
    add_column :rent_subscriptions, :rental_id, :integer
    add_index :rent_subscriptions, :rental_id
    add_column :rent_subscriptions, :tenant_id, :integer
    add_index :rent_subscriptoins, :tenant_id
  end
end
