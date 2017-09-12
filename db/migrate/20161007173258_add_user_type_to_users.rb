class AddUserTypeToUsers < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.string :user_type
    end

    say_with_time "Converting calculated user type to saved user type..." do
      User.connection.tap do |c|
        c.execute "UPDATE users SET user_type = signup_user_type WHERE signup_user_type IS NOT NULL AND LENGTH(signup_user_type) > 0"
        c.execute "UPDATE users SET user_type = 'owner' WHERE user_type IS NULL AND owner_step_complete = 'verify'"
        c.execute "UPDATE users SET user_type = 'housemate' WHERE user_type IS NULL AND housemate_step_complete = 'verify'"
        c.execute "UPDATE users SET user_type = 'owner' WHERE user_type IS NULL AND owner_step_complete IS NOT NULL"
        c.execute "UPDATE users SET user_type = 'housemate' WHERE user_type IS NULL AND housemate_step_complete IS NOT NULL"
      end
    end
  end
end
