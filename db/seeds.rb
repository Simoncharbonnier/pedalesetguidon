Rental.destroy_all
Bike.destroy_all
User.destroy_all

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Creating users, bikes and rentals [...]'

# -----------------  PASSWORDS : "secret"  ----------------- #

# 6 users (2 owners and 4 renters)
john = User.create(first_name: "John", last_name: "Milou", email: "john@milou.fr", password: "secret")
paul = User.create(first_name: "Paul", last_name: "Haddock", email: "paul@bottle.fr", password: "secret")
louise = User.create(first_name: "Louise", last_name: "Tournesol", email: "ltournesol@gmail.com", password: "secret")
louis = User.create(first_name: "Louis", last_name: "Dupond ", email: "ldupont@gmail.com", password: "secret")

patrick = User.create(first_name: "Patrick", last_name: "Antoine ", email: "pantoine@gmail.com", password: "secret")
catherine = User.create(first_name: "Catherine", last_name: "Prou", email: "cp@gmail.com", password: "secret")

# 10 bikes

bike1 = Bike.create(user_id: 5, bike_name: "Btwin Max", category: "VTT", daily_price: "20", gender: "male", location: "Nantes")
bike2 = Bike.create(user_id: 5, bike_name: "Btwin Explorer", category: "VTC", daily_price: "15", gender: "male", location: "Bordeaux")
bike3 = Bike.create(user_id: 5, bike_name: "Cannondale Speed", category: "Route", daily_price: "30", gender: "male", location: "Saint Herblain")
bike4 = Bike.create(user_id: 5, bike_name: "Gitane Explorer", category: "VTC", daily_price: "18", gender: "female", location: "Nantes")
bike5 = Bike.create(user_id: 5, bike_name: "Btwin Explorer", category: "VTC", daily_price: "21", gender: "female", location: "Pornichet")
bike6 = Bike.create(user_id: 6, bike_name: "Cannondale Race", category: "Route", daily_price: "32", gender: "male", location: "Paris")
bike7 = Bike.create(user_id: 6, bike_name: "BMC Trek", category: "VTT", daily_price: "45", gender: "male", location: "Rezé")
bike8 = Bike.create(user_id: 6, bike_name: "HaiBike Mud", category: "VTT", daily_price: "40", gender: "male", location: "Nantes")
bike9 = Bike.create(user_id: 6, bike_name: "Cannondale Lady Racer", category: "Route", daily_price: "35", gender: "female", location: "Saint Nazaire")
bike10 = Bike.create(user_id: 6, bike_name: "Trek UltraMax", category: "VTT", daily_price: "50", gender: "male", location: "Nantes")

# 6 Rentals

rental1 = Rentals.create(user_id: 1, bike_id: 2, status: "validated", start_at: "2021,2,3", end_at: "2021,2,5", total_price: 30 )
rental2 = Rentals.create(user_id: 2, bike_id: 6, status: "validated", start_at: "2021,1,3", end_at: "2021,1,5", total_price: 64 )
rental3 = Rentals.create(user_id: 3, bike_id: 5, status: "pending", start_at: "2021,12,3", end_at: "2021,12,5", total_price: 36 )
rental4 = Rentals.create(user_id: 4, bike_id: 10, status: "validated", start_at: "2021,11,3", end_at: "2021,11,9", total_price: 300 )
rental5 = Rentals.create(user_id: 1, bike_id: 8, status: "pending", start_at: "2022,2,3", end_at: "2022,2,5", total_price: 80 )
rental6 = Rentals.create(user_id: 3, bike_id: 9, status: "validated", start_at: "2022,2,18", end_at: "2022,2,22", total_price: 140 )
