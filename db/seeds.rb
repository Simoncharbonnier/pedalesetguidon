require "open-uri"

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
john = User.create(first_name: "John", last_name: "Milou", githname: "nfilzi", email: "john@milou.fr", password: "secret")
paul = User.create(first_name: "Paul", last_name: "Haddock", githname: "valdrn", email: "paul@bottle.fr", password: "secret")
louise = User.create(first_name: "Louise", last_name: "Tournesol", githname: "drptitlu", email: "ltournesol@gmail.com", password: "secret")
louis = User.create(first_name: "Louis", last_name: "Dupond ", githname: "simoncharbonnier", email: "ldupont@gmail.com", password: "secret")

patrick = User.create(first_name: "Patrick", last_name: "Antoine ", githname: "criaudh", email: "pantoine@gmail.com", password: "secret")
catherine = User.create(first_name: "Catherine", last_name: "Prou", githname: "guillaumecabanel", email: "cp@gmail.com", password: "secret")
puts 'Users seeds done'

# Bikes seed pictures

file_bike2 = URI.open("https://res.cloudinary.com/dtrdvotn4/image/upload/v1645527143/bike2_raefoq.jpg")
file_bike3 = URI.open("https://res.cloudinary.com/dtrdvotn4/image/upload/v1645527143/bike3_qhfyr3.jpg")
file_bike4 = URI.open("https://res.cloudinary.com/dtrdvotn4/image/upload/v1645527143/bike4_ldaw6a.jpg")
file_bike5 = URI.open("https://res.cloudinary.com/dtrdvotn4/image/upload/v1645527142/bike5_qv4xgg.jpg")
file_bike6 = URI.open("https://res.cloudinary.com/dtrdvotn4/image/upload/v1645527142/bike6_cqigxu.jpg")
file_bike7 = URI.open("https://res.cloudinary.com/dtrdvotn4/image/upload/v1645527143/bike7_drkffv.jpg")
file_bike8 = URI.open("https://res.cloudinary.com/dtrdvotn4/image/upload/v1645527142/bike8_jlghf9.jpg")
file_bike9 = URI.open("https://res.cloudinary.com/dtrdvotn4/image/upload/v1645527142/bike9_z3ugbx.jpg")
file_bike10 = URI.open("https://res.cloudinary.com/dtrdvotn4/image/upload/v1645527142/bike10_tgimva.jpg")

# 10 bikes

bike2 = Bike.create(user: patrick, bike_name: "Btwin Explorer", category: "VTC", daily_price: "15", gender: "male", location: "6 Rue François Albert, Nantes")
bike2.photo.attach(io: file_bike2, filename: 'BtwinExplorer.jpg', content_type: 'image/jpg')

bike3 = Bike.create(user: patrick, bike_name: "Cannondale Speed", category: "Route", daily_price: "30", gender: "male", location: "33 Bd Victor Hugo, Nantes")
bike3.photo.attach(io: file_bike3, filename: 'CannondaleSpeed.jpg', content_type: 'image/jpg')

bike4 = Bike.create(user: patrick, bike_name: "Gitane Explorer", category: "VTC", daily_price: "18", gender: "male", location: "8 Passage de la Poule Noire, Nantes")
bike4.photo.attach(io: file_bike4, filename: 'GitaneExplorer.jpg', content_type: 'image/jpg')

bike5 = Bike.create(user: patrick, bike_name: "Btwin Lady Explorer", category: "VTC", daily_price: "21", gender: "female", location: "15 Rue la Fayette, Nantes")
bike5.photo.attach(io: file_bike5, filename: 'BtwinLadyExplorer.jpg', content_type: 'image/jpg')

bike6 = Bike.create(user: catherine, bike_name: "Cannondale Race", category: "Route", daily_price: "32", gender: "male", location: "2 Rue Chauvin, Nantes")
bike6.photo.attach(io: file_bike6, filename: 'CannondaleRace.jpg', content_type: 'image/jpg')

bike7 = Bike.create(user: catherine, bike_name: "BMC Trek", category: "VTT", daily_price: "45", gender: "male", location: "12 Rue Georges Clemenceau, Nantes")
bike7.photo.attach(io: file_bike7, filename: 'BMCTrek.jpg', content_type: 'image/jpg')

bike8 = Bike.create(user: catherine, bike_name: "HaiBike Mud", category: "VTT", daily_price: "40", gender: "male", location: "32 Rue de Lourmel, Nantes")
bike8.photo.attach(io: file_bike8, filename: 'HaibikeMud.jpg', content_type: 'image/jpg')

bike9 = Bike.create(user: catherine, bike_name: "Cannondale Lady Racer", category: "Route", daily_price: "35", gender: "female", location: "1 Rue de la Brasserie, Nantes")
bike9.photo.attach(io: file_bike9, filename: 'CannondaleLadyRacer.jpg', content_type: 'image/jpg')

bike10 = Bike.create(user: catherine, bike_name: "Trek UltraMax", category: "VTT", daily_price: "50", gender: "male", location: "17 Bd de Launay, Nantes")
bike10.photo.attach(io: file_bike10, filename: 'TrekUltraMax.jpg', content_type: 'image/jpg')

puts 'Bikes seeds done'

# 6 Rentals
rental4 = Rental.create(user: paul, bike: bike7, status: "validated", start_at: "2022-4-3", end_at: "2022-4-5", total_price: bike7.daily_price * 3 )
rental1 = Rental.create(user: paul, bike: bike9, status: "validated", start_at: "2020-1-3", end_at: "2020-1-5", total_price: bike9.daily_price * 3 )
rental2 = Rental.create(user: paul, bike: bike5, status: "validated", start_at: "2021-1-3", end_at: "2021-1-5", total_price: bike5.daily_price * 3 )
rental3 = Rental.create(user: louise, bike: bike4, status: "validated", start_at: "2021-12-3", end_at: "2021-12-5", total_price: bike4.daily_price * 3 )
rental5 = Rental.create(user: john, bike: bike3, status: "validated", start_at: "2021-02-03", end_at: "2021-02-05", total_price: bike3.daily_price * 3 )
rental7 = Rental.create(user: john, bike: bike2, status: "validated", start_at: "2022-4-18", end_at: "2022-4-22", total_price: bike2.daily_price * 5 )
puts 'Rentals seeds done'

# Confirmation message

puts 'Seeds correctly added !'
