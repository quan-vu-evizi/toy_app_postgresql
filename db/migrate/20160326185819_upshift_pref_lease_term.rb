class UpshiftPrefLeaseTerm < ActiveRecord::Migration
  def up
    say_with_time("Shifting pref_lease_term on users up by one to insert new 'no preference' option at 0...") do
      ActiveRecord::Base.connection.execute("UPDATE users SET pref_lease_term = pref_lease_term + 1 WHERE pref_lease_term IS NOT NULL")
    end

    say_with_time("Shifting pref_lease_term on rentals up by one to insert new 'no preference' option at 0...") do
      ActiveRecord::Base.connection.execute("UPDATE rentals SET pref_lease_term = pref_lease_term + 1 WHERE pref_lease_term IS NOT NULL")
    end
  end

  def down
    say_with_time("Shifting pref_lease_term on users down by one to remove new 'no preference' option at 0...") do
      ActiveRecord::Base.connection.execute("UPDATE users SET pref_lease_term = pref_lease_term - 1 WHERE pref_lease_term > 0")
    end

    say_with_time("Shifting pref_lease_term on rentals down by one to remove new 'no preference' option at 0...") do
      ActiveRecord::Base.connection.execute("UPDATE rentals SET pref_lease_term = pref_lease_term - 1 WHERE pref_lease_term > 0")
    end
  end
end
