class AddAmenitiesAndSafetyFeaturesToRentals < ActiveRecord::Migration
  def up
    change_table :rentals do |t|
      t.text :amenity_options, array: true, default: []
      t.text :safety_options, array: true, default: []
    end

    Rental.reset_column_information

    if Rental.respond_to?(:bitmask_for_amenities)
      say_with_time("Migrating existing bitmask amenitity attributes => amenity_options/safety_options...") do
        Rental.select("id, amenity_options, safety_options, amenities, extras, safety, utilities, air_conditioning").each do |rental|
          old_options = rental.amenities + rental.extras + rental.safety + rental.utilities
          old_options += [:air_conditioning] unless rental.air_conditioning.nil? or rental.air_conditioning == "no_ac"
          old_options = old_options.map(&:to_s)

          puts "Rental [#{rental.id}] Original: #{old_options.join(', ')}"

          amenity_options = []
          safety_options = []

          old_options.each do |option|
            if Rental::AMENITY_OPTIONS.include?(option)
              amenity_options << option
            elsif Rental::SAFETY_OPTIONS.include?(option)
              safety_options << option
            end
          end

          amenity_options.uniq!
          safety_options.uniq!

          puts "  => Amenity Options: #{amenity_options.join(', ')}"
          puts "  => Safety Options: #{safety_options.join(', ')}"

          rental.update_columns(
            amenity_options: amenity_options,
            safety_options: safety_options
          )
        end
      end
    else
      puts "No bitmask definitions found for amenities, skipping migrating existing data."
    end
  end

  def down
    change_table :rentals do |t|
      t.remove :safety_options
      t.remove :amenity_options
    end
  end
end
