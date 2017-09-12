class RemoveBlockscoreDisclaimerFromUsers < ActiveRecord::Migration
  def up
    remove_column :users, :blockscore_disclaimer_agreed_at
    remove_column :users, :blockscore_disclaimer_user_ip
  end

  def down
    add_column :users, :blockscore_disclaimer_agreed_at, :datetime
    add_column :users, :blockscore_disclaimer_user_ip, :string
  end
end
