class RemoveSignupUserTypeFromUsers < ActiveRecord::Migration
  def up
    remove_column :users, :signup_user_type
  end
  
  def down
    add_column :users, :signup_user_type, :string
  end
end
