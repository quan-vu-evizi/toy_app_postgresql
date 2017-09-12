class AddBackgroundCheckPassedToUsers < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.boolean :background_check_passed, null: true
    end
  end
end
