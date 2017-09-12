class MovePaymentTypeToRentSubscriptions < ActiveRecord::Migration
  def up
    add_column :rent_subscriptions, :payment_type, :integer

    say_with_time("Copying rent_profiles.payment_type to associated rent_subscriptions.payment_type...") do
      RentSubscription.connection.execute("
        UPDATE rent_subscriptions AS s SET payment_type = p.payment_type
        FROM rent_profiles p
        WHERE s.rent_profile_id = p.id
      ")
    end

    remove_column :rent_profiles, :payment_type
  end

  def down
    add_column :rent_profiles, :payment_type, :integer

    say_with_time("Copying rent_subscriptions.payment_type to associated rent_profiles.payment_type...") do
      RentProfile.connection.execute("
        UPDATE rent_profiles AS p SET payment_type = s.payment_type
        FROM rent_subscriptions s
        WHERE s.rent_profile_id = p.id
      ")
    end

    remove_column :rent_subscriptions, :payment_type
  end
end
