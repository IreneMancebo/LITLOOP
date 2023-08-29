# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

puts "Cleaning the Database 🧼"
sleep(1)
User.destroy_all
Spot.destroy_all

puts "Creating Users 🙋🏻‍♀️ 🧙🏼‍♂️ 🤷🏻‍♀️ 👩🏻‍🦰"
sleep(1)
User.create!(email: "brett@litloop.com", password: "password")
User.create!(email: "nadja@litloop.com", password: "password")
User.create!(email: "irene@litloop.com", password: "password")
User.create!(email: "nicole@litloop.com", password: "password")

puts "Creating Nooks 📖 📚 📇"
sleep(1)

Spot.create!(name: "Buchplatz am Kaisersteg", address: "52.457690, 13.518904", user_id: "1")
Spot.create!(name: "Tempelhofer Aussicht", address: "52.465878, 13.405435", user_id: "2")
Spot.create!(name: "Koernook Park", address: "52.471646, 13.438770", user_id: "3")
Spot.create!(name: "Buchspark Friedrichshain", address: "52.527266, 13.434275", user_id: "4")

puts "Done :D"
