# See issue #588. For some inexplicable reason, some owners never got seeded with free subscriptions.
#
class FixUpMissingOwnerSubscriptions < ActiveRecord::Migration
  def up
    say_with_time "Fixing up remaining missing owner subscriptions..." do
      if Rails.env.test?
        puts "Skipping in test environment"
        return true
      end

      if plan = Plan.where(name: "Homeowner Promotion").first

        users = User.where(user_type: "owner").where("created_at < ?", Date.new(2016, 10, 25)).where("NOT EXISTS (
          SELECT p.id FROM plans p
          INNER JOIN user_plans up ON up.plan_id = p.id
          WHERE up.user_id = users.id 
          AND up.expires_at > ? 
          AND p.roles & ? > 0
        )", Date.new(2016, 10, 25), Plan.bitmask_for_roles(:homeowner))

        users.each do |user|
          next if user.paying_homeowner?

          say_with_time "Giving #{user.email} [#{user.id}] a free #{plan.name}:" do
            Payment.transaction do
              user.plans << plan
              payment_parent = user.user_plans.last

              user.payments.create!(amount: 0, parent: payment_parent)
            end
          end
        end

      end
    end
  end

  def down
  end
end
