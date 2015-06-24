require 'csv'
require 'pp'


class Delivery
  attr_accessor :destination, :money
end

deliveries = []
#HOw much money did we make this week
CSV.foreach("/Users/amandalemmons/TIY/week_1/lab/planet_express.csv", headers: true) do |line|
  # deliveries<< line.to_hash[" Money we made"].to_f

#Each one of these is an instance of a class. b/c they all have a delivery in common
  delivery = Delivery.new
  delivery.money = line.to_hash[" Money we made"].to_f
  delivery.destination = line.to_hash["Destination"]
  deliveries << delivery
end


def deliveries_for(deliveries, destination)
  deliveries.select do |delivery|
    delivery.destination == destination
  end
end


  def total_money(deliveries)
    monies = deliveries.map do |delivery|
      delivery.money
    end
    monies.reduce(:+)
  end
  puts "The total amount made this week was $#{total_money(deliveries)}"





  #fry
  earth_planet = deliveries_for(deliveries,"Earth")
  $fry_total= total_money (earth_planet)
  fry_bonus = $fry_total / 10
  puts "Fry's bonus is $#{fry_bonus}."
  puts "Fry took #{earth_planet.count} trips."

  # amy
  mars_planet = deliveries_for(deliveries,"Mars")
  $amy_total = total_money (mars_planet)
  amy_bonus = $amy_total / 10
  puts "Amy's bonus is $#{amy_bonus}."
  puts "Amy took #{mars_planet.count} trips."

  # bender
  uranus_planet = deliveries_for(deliveries,"Uranus")
  $bender_total = total_money (uranus_planet)
  bender_bonus = $bender_total / 10

  puts "Bender's bonus is $#{bender_bonus}."
  puts "Bender took #{uranus_planet.count} trips."


  # leela
  moon_planet = deliveries_for(deliveries,"Moon")
  $moon_total = total_money(moon_planet)

  # leela
  jupiter_planet = deliveries_for(deliveries,"Jupiter")
  $jupiter_total = total_money(jupiter_planet)

  # leela
  saturn_planet = deliveries_for(deliveries,"Saturn")
  $saturn_total = total_money(saturn_planet)
  # leela
  mercury_planet = deliveries_for(deliveries,"Mercury")
  $mercury_total = total_money(mercury_planet)
  #  leela
  pluto_planet = deliveries_for(deliveries, "Pluto")
  $pluto_total = total_money(pluto_planet)

leela_total = total_money(moon_planet) + total_money(jupiter_planet) + total_money(saturn_planet) + total_money(mercury_planet)+ total_money(pluto_planet)
leela_bonus = leela_total / 10
puts "Leela's bonus is $#{leela_bonus}"



leela_total_trips= moon_planet.count + jupiter_planet.count + saturn_planet.count + mercury_planet.count + pluto_planet.count
puts "Leela took #{leela_total_trips} trips."



# Define a class "Parse", with a method parse_data,
# with an argument file_name and outputs the information to the console
# How much money did we make broken down by planet?
# ie.. how much did we make shipping to Earth? Mars? Saturn? etc.

class Parse

  def parse

    file_name = {
      "Earth"=>"#{$fry_total}",
     "Mars"=>"#{$amy_total}",
     "Uranus"=>"#{$bender_total}",
     "Moon"=>"#{$moon_total}",
     "Jupiter"=>"#{$jupiter_total}",
     "Saturn"=>"#{$saturn_total}",
     "Mercury"=>"#{$mercury_total}",
     "Pluto"=>"#{$pluto_total}"
     }

      file_name.each do |planet, total|
        puts "#{planet} made a total of #{total}"

    end

  end
end

parse= Parse.new
parse
# parse.parse_data()
# parse << file_name













# class Dragon
#   def initialize(name)
#     @name = name
#     @asleep = false
#     @stuff_in_belly = 10
#     @stuff_in_intestine = 0
#
#     puts "#{@name} is born."
#   end
#
#   def feed
#     puts "You feed #{@name}"
#     @stuff_in_belly = 10
#     passage_of_time
#   end
#
#   def walk
#     puts "You walk #{@name}"
#     @stuff_in_intestine = 0
#     passage_of_time
#   end
#
#   def put_to_bed
#     puts "You put #{@name} to sleep"
#     @asleep = true
#     3.times do
#       if @asleep
#         passage_of_time
#   end
#
#   if @asleep
#     puts "#{@name} snores, filling room with smoke"
#   end
# end
