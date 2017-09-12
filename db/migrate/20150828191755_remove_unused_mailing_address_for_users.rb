class RemoveUnusedMailingAddressForUsers < ActiveRecord::Migration
  def up
    change_table :users do |t|
      t.remove :mailing_address
      t.remove :mailing_address2
      t.remove :mailing_city
      t.remove :mailing_state
      t.remove :mailing_zip
    end
  end

  def down
    change_table :users do |t|
      t.string :mailing_address
      t.string :mailing_address2
      t.string :mailing_city
      t.string :mailing_state
      t.string :mailing_zip
    end
  end
end
