class AddBlockscoreAttemptsToUsers < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.integer :blockscore_attempts, default: 0, null: false
    end
  end
end
