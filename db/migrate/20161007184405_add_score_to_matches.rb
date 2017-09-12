class AddScoreToMatches < ActiveRecord::Migration
  def change
    change_table :matches do |t|
      t.integer :score
    end

    say_with_time "Pre-seeding match score for all existing matches..." do
      Match.all.select {|m| m.rental && m.rental.owner && m.renter }.each do |match|
        match.update_column :score, match.matching.score if match.matching
      end
    end
  end
end
