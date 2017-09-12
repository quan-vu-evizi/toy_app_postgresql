class ConvertSubscriptionExpiresAtToDateTime < ActiveRecord::Migration
  def up
    change_column :user_plans, :expires_at, :datetime
  end

  def down
    change_column :user_plans, :expires_at, :date
  end
end
