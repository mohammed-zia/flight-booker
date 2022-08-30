# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Deleting old seeds..."
Flight.destroy_all
Airport.destroy_all
puts "Old seeds deleted."


puts "Seeding..."
Airport.create!(name: "London Heathrow", code: "LHR")
Airport.create!(name: "London Gatwick", code: "LGW")
Airport.create!(name: "Los Angeles", code: "LAX")
Airport.create!(name: "Rhodes", code: "RHO")
Airport.create!(name: "Paris Charles de Gaulle", code: "CDG")
Airport.create!(name: "Bristol", code: "BRS")
Airport.create!(name: "Cardiff", code: "CWL")
Airport.create!(name: "Manchester", code: "MAN")

Flight.create!(departure_datetime: DateTime.new(2022, 10, 22, 17, 30),
              arrival_datetime: DateTime.new(2022, 10, 22, 18),
              duration: ((DateTime.new(2022, 10, 22, 18) - DateTime.new(2022, 10, 22, 17, 30)) * 24 * 60).to_i,
              price: 8.10,
              departure_airport_id: 1,
              arrival_airport_id: 2)

Flight.create!(departure_datetime: DateTime.new(2022, 10, 22, 17, 30),
              arrival_datetime: DateTime.new(2022, 10, 22, 18),
              duration: ((DateTime.new(2022, 10, 22, 18) - DateTime.new(2022, 10, 22, 17, 30)) * 24 * 60).to_i,
              price: 18.10,
              departure_airport_id: 1,
              arrival_airport_id: 2)
              
Flight.create!(departure_datetime: DateTime.new(2022, 10, 22, 17, 30),
              arrival_datetime: DateTime.new(2022, 10, 22, 18),
              duration: ((DateTime.new(2022, 10, 22, 18) - DateTime.new(2022, 10, 22, 17, 30)) * 24 * 60).to_i,
              price: 82.10,
              departure_airport_id: 1,
              arrival_airport_id: 2)

Flight.create(departure_datetime: DateTime.new(2022, 11, 22, 17, 30),
              arrival_datetime: DateTime.new(2022, 11, 22, 19, 30),
              duration: ((DateTime.new(2022, 10, 22, 19, 30) - DateTime.new(2022, 10, 22, 17, 30)) * 24 * 60).to_i,
              price: 18.10,
              departure_airport_id: 2,
              arrival_airport_id: 5)

Flight.create(departure_datetime: DateTime.new(2022, 10, 22, 10, 30),
              arrival_datetime: DateTime.new(2022, 10, 22, 19),
              duration: ((DateTime.new(2022, 10, 22, 19) - DateTime.new(2022, 10, 22, 10, 30)) * 24 * 60).to_i,
              price: 800.10,
              departure_airport_id: 1,
              arrival_airport_id: 3)
puts "Database seeded."