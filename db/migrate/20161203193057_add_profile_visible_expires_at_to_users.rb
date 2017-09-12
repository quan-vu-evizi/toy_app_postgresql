class AddProfileVisibleExpiresAtToUsers < ActiveRecord::Migration
  def up
    add_column :users, :profile_visible_expires_at, :datetime

    new_time = 30.days.from_now.beginning_of_day

    say_with_time "Seeding users.profile_visible_expires_at to 30 days from now..." do
      User.housemates.update_all profile_visible_expires_at: new_time
    end
  end

  def down
    remove_column :users, :profile_visible_expires_at
  end
end
