class KeepOnlyLastUserAvatar < ActiveRecord::Migration
  def up
    say_with_time "Removing all but the last avatar per user (implementing uniqueness)..." do
      User.where("(SELECT COUNT(*) FROM pictures WHERE pictures.parent_type = 'User' AND pictures.parent_id = users.id) > 1").each do |user|
        puts "User #{user.email} [#{user.id}]"

        Avatar.where(parent_id: user.id).order("created_at desc").each_with_index do |avatar, i|
          if i == 0
            puts "  Keeping Avatar [#{avatar.id}]"
          else
            avatar.destroy
            puts "  Removed Avatar [#{avatar.id}]"
          end
        end
      end
    end
  end

  def down
  end
end
