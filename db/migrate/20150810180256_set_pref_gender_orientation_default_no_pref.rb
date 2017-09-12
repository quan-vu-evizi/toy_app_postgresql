class SetPrefGenderOrientationDefaultNoPref < ActiveRecord::Migration
  def change
    change_column_default :users, :pref_gender_orientation, 1
  end
end
