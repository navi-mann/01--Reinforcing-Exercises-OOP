require 'pry'
class Location
  def initialize(name)
    @name = name
  end
end

class Trip

  @@destinations =[]

  def initialize(name)
    @name = name
    @@destinations = @@destinations
  end

    def self.get_the_name
      @@destinations.each do |key,value|
        puts value
      end
    end

  def self.add(trip)
    @@destinations << trip
  end

  def self.schedule
    puts "Begin Trip."
    @@destinations.each_cons(2) do |value|
      puts "Travelled from #{value[0]} to #{value[1]}"
    end
    puts "Ended Trip."

  end

end

toronto = Location.new('toronto')
montreal = Location.new('montreal')
quebec = Location.new('quebec')
new_york = Location.new("new york")

Trip.new('new_trip')
new_trip = Trip.add(toronto)
new_trip = Trip.add(montreal)
new_trip = Trip.add(quebec)
new_trip = Trip.add(new_york)
# puts new_trip.inspect

Trip.schedule
