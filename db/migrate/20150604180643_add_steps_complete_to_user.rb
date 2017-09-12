class AddStepsCompleteToUser < ActiveRecord::Migration
  def change
    add_column :users, :owner_step_complete, :string
    add_column :users, :housemate_step_complete, :string
  end
end
