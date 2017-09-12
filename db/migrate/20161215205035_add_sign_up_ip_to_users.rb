class AddSignUpIpToUsers < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.string :sign_up_ip
    end
  end
end
