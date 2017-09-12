class AddNewRentalsNoticeSentIdsToUsers < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.text :new_rentals_notice_sent_ids, array: true, default: []
    end
  end
end
