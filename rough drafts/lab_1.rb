# # Deliverables
#
# A gist containing at least:
# planet_express_logs.csv
# data_parser.rb
# A Class "Delivery", with the data in the CSV file
# Requirements
#
# I should be able to run ruby data_parser.rb and see the output on the screen
# Normal Mode
#
# Good news Rubyists!
# We have a week of records tracking what we shipped at Planet Express. I need you to answer a few questions for Hermes.
#

#

# Define and use a class for each shipment
# Different employees have favorite destinations they always pilot to
#
# Fry - pilots to Earth (because he isn't allowed into space)
# Amy - pilots to Mars (so she can visit her family)
# Bender - pilots to Uranus (teeheee...)
# Leela - pilots everywhere else because she is the only responsible one
# They get a bonus of 10% of the money for the shipment as the bonus

require 'csv'
require 'pp'

class Person
  attr_accessor :name, :destination

  def initialize(name, destination)
    self.name = name
    self.destination = destination
    end
end

employees = [

 Person.new("Fry", "Earth"),
 Person.new("Amy", "Mars"),
 Person.new("Bender", "Uranus"),
 Person.new("Leela", (" ")

 )]


 planets = []
 CSV.foreach("/Users/amandalemmons/TIY/week_1/planet_express.csv", headers: true) do |row|
   planets<< row.to_hash
 end

 # How much money did we make this week?


money = []
CSV.foreach("/Users/amandalemmons/TIY/week_1/planet_express.csv", headers: true) do |row|
  money<< row.to_hash[" Money we made"].to_f
end

total = money.reduce(:+)

puts "The total made this week was $#{total}." "\n"


# How much of a bonus did each employee get? (bonuses are paid to employees who pilot the Planet Express)

employees.each do |employee|
  # filter the planets to find the destination serviced by this employee
 employee_planets = planets.select do |planet|
   planet["Destination"] == employee.destination
 end
 # map the destinations into an array of money
 moneys= employee_planets.map do |ep|
   ep[" Money we made"].to_f
   # reduce the moneys into a single money amount
 end.inject(:+)

 # find bonus (money * 0.10)
 bonus_money = moneys * 0.10

 puts "#{employee.name} made a bonus of $#{bonus_money}"
 # puts "#{employee.name} -> #{moneys}"
end
puts


# How many trips did each employee pilot?

employees.each do |employee|
  # filter the planets to find the destination serviced by this employee
 employee_planets = planets.select do |planet|
   planet["Destination"] == employee.destination
 end
 employee_name = employee_planets.map do |ep|
   ep[:name]
 end

   puts "hey #{employee_planets}, #{employee_name}"
 end
