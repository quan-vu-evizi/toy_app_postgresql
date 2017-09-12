class GiveAllOwnersSubscriptions < ActiveRecord::Migration
  def up
    say_with_time "Giving all existing unsubscribed owners a free subscription pre-emptively..." do
      if Rails.env.test?
        puts "Skipping in test environment"
        return true
      end

      if plan = Plan.where(name: "Homeowner Promotion").first
        User.where(user_type: "owner").not_paying_homeowner.each do |user|
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
