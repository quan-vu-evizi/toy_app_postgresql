# Converts pref_gender_orientation into three separate options, data migration coming separately...
class RestructureGenderOrientationPreferences < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.boolean :pref_male, null: false, default: true
      t.boolean :pref_female, null: false, default: true
      t.integer :pref_male_orientation, null: false, default: 0
      t.integer :pref_female_orientation, null: false, default: 0
    end
  end
end
