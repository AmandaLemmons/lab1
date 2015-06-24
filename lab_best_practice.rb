#How much money did we make this week

#parse w CSV into deliveris, and sum all deliveries

require 'csv'

CSV.foreach("/Users/amandalemmons/TIY/week_1/lab/planet_express.csv", headers: true) do |row|
  puts.row.to_hash
end
