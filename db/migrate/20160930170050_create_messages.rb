class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.references :rental, index: true
      t.references :housemate, index: true
      t.references :sender, index: true
      t.text :body
      t.datetime :created_at, null: false
    end
  end
end
