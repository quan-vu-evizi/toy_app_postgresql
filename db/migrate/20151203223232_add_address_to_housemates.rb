class AddAddressToHousemates < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.string :address
      t.string :address2
      t.string :city
      t.string :state
      t.string :zip
    end
  end
end
