class AddPlans < ActiveRecord::Migration
  def up
    Plan.destroy_all

    # Plans are seeded via rake db:seed now...
    #
    # Plan.create!(
    #   name:        "Basic",
    #   description:
    #     "Homeshare listing for 3 months\n" \
    #     "Up to ten qualified matches",
    #   duration:    93,
    #   price:       99.00,
    #   roles:       %i(homeowner),
    # )

    # Plan.create!(
    #   name:        "Basic Plus",
    #   description:
    #     "Homeshare listing for 6 months\n" \
    #     "Unlimited qualified matches\n" \
    #     "Lease/homesharing agreement preparation and storage",
    #   duration:    184,
    #   price:       199.00,
    #   roles:       %i(homeowner unlimited_matches lease_preparation),
    # )

    # Plan.create!(
    #   name:        "Premium",
    #   description:
    #     "Homeshare listing for 6 months\n" \
    #     "Unlimited qualified matches\n" \
    #     "Lease/homesharing agreement preparation and storage\n" \
    #     "Background screening of potential matches\n" \
    #     "Rent payment processing service",
    #   duration:    184,
    #   price:       349.00,
    #   roles:       %i(homeowner unlimited_matches lease_preparation background_check_renters receive_rent),
    # )

    # Plan.create!(
    #   name:        "Background Check",
    #   description: "Silvernest will perform a basic background check.",
    #   duration:    3650,
    #   price:       29.00,
    #   roles:       %i(pay_rent my_background_basic),
    # )

    # Plan.create!(
    #   name:        "Enhanced Background Check",
    #   description: "Silvernest will perform an enhanced background check.",
    #   duration:    3650,
    #   price:       49.00,
    #   roles:       %i(pay_rent my_background_enhanced),
    # )
  end

  def down
    Plan.destroy_all
  end
end
