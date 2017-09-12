class AddNewRentalsNoticeSentAtToUsers < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.datetime :new_rentals_notice_sent_at
    end
  end
end
