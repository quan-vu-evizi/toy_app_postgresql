class AddLivingWithToUsers < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.integer :living_with
    end
  end
end
