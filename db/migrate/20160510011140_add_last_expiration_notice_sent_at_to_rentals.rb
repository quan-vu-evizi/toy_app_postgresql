class AddLastExpirationNoticeSentAtToRentals < ActiveRecord::Migration
  def change
    change_table :rentals do |t|
      t.datetime :last_expiration_notice_sent_at
    end
  end
end
