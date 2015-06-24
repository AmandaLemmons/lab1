# DIFFERENT IDEAS FOR LEELA
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

 fry= Person.new("Fry", "Earth"),
 amy= Person.new("Amy", "Mars"),
 bender= Person.new("Bender", "Uranus"),
 leela= Person.new("Leela", (" ")

 )]


 planets = []
 CSV.foreach("/Users/amandalemmons/TIY/week_1/planet_express.csv", headers: true) do |row|
   planets<< row.to_hash["Destination"]
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


# require 'csv'
# require 'pp'
# # class Leela
# #   attr_accessor :destination
# #
# #   def initialize(destination)
# #     self.destination = destination
# #     end
# #
# #   end
# #
# #
# # leelas_jobs = [
# #   Leela.new("Moon"),
# #   Leela.new("Mars"),
# #   Leela.new("Jupiter"),
# #   Leela.new("Pluto"),
# #   Leela.new("Saturn"),
# #   Leela.new("Mercury")
# # ]
# #
# # leelas_jobs.each do |leela_job|
# #   leelas_planets = planets.select do |planet|
# #     planet["Destination"] == leelas_jobs.destination
# #   end
# #
# #
# #   leelas_money= leelas_planets.map do |lp|
# #     lp[" Money we made"].to_f
# #   end.inject(:+)
# #
# #   bonus_moneys = leelas_money * 0.10
# #   puts "heyyy#{bonus_moneys}"
# #
# #   end
# #
# # leelas_jobs.each do |lj|
# #   ll_jobs = planets.select do |planet|
# #     planet["Destination"] == leelas_job.destination
# #   end
# # end
#
# class Person
#
#   attr_accessor :name
#   attr_accessor :destination
#
#   def initialize(name, destination)
#     self.name = name
#     self.destination = destination
#   end
#
#
# employees = [
#
#
#  Person.new("Fry", "Earth"),
#  Person.new("Amy", "Mars"),
#  Person.new("Bender", "Uranus"),
#  Person.new("Leela","Moon"),
#  Person.new("Leela","Mars"),
#  Person.new("Leela","Jupiter"),
#  Person.new("Leela","Pluto"),
#  Person.new("Leela","Saturn"),
#  Person.new("Leela","Mercury")
#  ]
# # puts "#{employees.name}"
# end
#
# destinations = []
# CSV.foreach("/Users/amandalemmons/TIY/week_1/planet_express.csv", headers: true) do |row|
#   destinations<< row.to_hash["Destination"]
# end
# puts "#{destinations} -----> "
#
#
#
#   employee_planets = destinations.select do |destination|
#   employees.map do |employee|
#   destination == employee
#   puts "#{employee_planets} ......0000"
# end
# puts "#{employee.name}--> #{}"
# end
#
#
#
#  # # map the destinations into an array of money
#  # moneys= employee_planets.map do |ep|
#  #   ep[" Money we made"].to_f
#  #   # reduce the moneys into a single money amount
#  # end.inject(:+)
# # employees.each do |employee|
# #   # filter the planets to find the destination serviced by this employee
# #   x = destinations.each do |destination|
# #    destination == employee.destination
# #    employee_route_list= employee_planets == employee.name
# #  end
# #  print "#[employees.name] and [employee.planets]"
# #  end
