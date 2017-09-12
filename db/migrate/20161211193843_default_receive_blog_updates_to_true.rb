class DefaultReceiveBlogUpdatesToTrue < ActiveRecord::Migration
  def up
    change_column :users, :receive_blog_updates, :boolean, null: false, default: true
  end

  def down
    change_column :users, :receive_blog_updates, :boolean, null: false, default: false
  end
end
