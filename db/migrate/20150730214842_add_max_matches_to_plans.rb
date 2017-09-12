class AddMaxMatchesToPlans < ActiveRecord::Migration
  def change
    change_table :plans do |t|
      t.integer :max_matches
    end
  end
end
