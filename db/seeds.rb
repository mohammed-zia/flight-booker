# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Deleting old seeds..."
Airport.delete_all
Flight.delete_all
puts "Old seeds deleted."


puts "Seeding..."
Airport.create(name: "London Heathrow", code: "LHR")
Airport.create(name: "London Gatwick", code: "LGW")
Airport.create(name: "Los Angeles", code: "LAX")
Airport.create(name: "Rhodes", code: "RHO")
Airport.create(name: "Paris Charles de Gaulle", code: "CDG")
Airport.create(name: "Bristol", code: "BRS")
Airport.create(name: "Cardiff", code: "CWL")
Airport.create(name: "Manchester", code: "MAN")

Flight.create(departure_datetime: DateTime.new(2022, 10, 22, 17, 30),
              arrival_datetime: DateTime.new(2022, 10, 22, 18),
              duration: 30,
              price: 8.10,
              departure_airport_id: 1,
              arrival_airport_id: 2)
puts "Database seeded."