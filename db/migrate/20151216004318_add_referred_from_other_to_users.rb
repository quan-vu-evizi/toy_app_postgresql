class AddReferredFromOtherToUsers < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.string :referred_from_other
    end
  end
end
