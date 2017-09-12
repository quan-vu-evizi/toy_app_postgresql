class DefaultExistingUsersToProfileInvisible < ActiveRecord::Migration
  def up
    say_with_time "Defaulting all existing users to profile_visible = false (despite default being true going forward)..." do
      User.where("search_coordinates IS NULL").update_all profile_visible: false
    end
  end

  def down
  end
end
