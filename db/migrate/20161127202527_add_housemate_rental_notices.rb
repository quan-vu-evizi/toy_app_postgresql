class AddHousemateRentalNotices < ActiveRecord::Migration
  def change
    change_table :rentals do |t|
      t.text :new_housemates_notice_sent_ids, array: true, default: []
      t.datetime :new_housemates_notice_sent_at
    end
  end
end
