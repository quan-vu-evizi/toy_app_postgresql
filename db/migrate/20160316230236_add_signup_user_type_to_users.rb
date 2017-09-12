class AddSignupUserTypeToUsers < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.string :signup_user_type
    end
  end
end
