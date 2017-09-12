class AddReferredFromToUsers < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.string :referred_from
    end
  end
end
