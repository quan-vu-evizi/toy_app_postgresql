class AddReceiveBlogUpdatesToUsers < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.boolean :receive_blog_updates, default: false, null: false
    end
  end
end
