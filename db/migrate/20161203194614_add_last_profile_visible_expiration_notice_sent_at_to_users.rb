class AddLastProfileVisibleExpirationNoticeSentAtToUsers < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.datetime :last_profile_visible_expiration_notice_sent_at
    end
  end
end
