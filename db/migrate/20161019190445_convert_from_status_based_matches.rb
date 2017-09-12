class ConvertFromStatusBasedMatches < ActiveRecord::Migration
  def up
    say_with_time "Converting formerly-failed matches to be archived..." do
      puts Match.connection.update_sql %{
        UPDATE matches 
        SET archived_by_id = rentals.owner_id, archived_at = CURRENT_TIMESTAMP
        FROM rentals 
        WHERE matches.rental_id = rentals.id
        AND matches.status = 2 AND matches.archived_at IS NULL
      }
    end

    say_with_time "Converting formerly-accepted matches to have owner message..." do
      puts Match.connection.update_sql %{
        UPDATE matches
        SET last_owner_message_at = COALESCE(requested_to_accepted_at, created_at, CURRENT_TIMESTAMP)
        WHERE matches.status = 1 AND last_owner_message_at IS NULL
      }
    end
  end

  def down
  end
end
