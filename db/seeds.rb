# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

puts "Cleaning the Database 🧼"
sleep(1)
User.destroy_all
Nook.destroy_all

puts "Creating Users 🙋🏻‍♀️ 🧙🏼‍♂️ 🤷🏻‍♀️ 👩🏻‍🦰"
sleep(1)
User.create!(username: "bretty", email: "brett@litloop.com", password: "password")
User.create!(username: "nadjalovesyoga", email: "nadja@litloop.com", password: "password")
User.create!(username: "irenikachan", email: "irene@litloop.com", password: "password")
User.create!(username: "nickynicole", email: "nicole@litloop.com", password: "password")

puts "Creating Nooks 📖 📚 📇"
sleep(1)

Nook.create!(name: "Buchplatz am Kaisersteg", coordinates: "52.457690, 13.518904", user_id: "1", description: "something", image: "app/assets/images/1.png")
Nook.create!(name: "Tempelhofer Aussicht", coordinates: "52.465878, 13.405435", user_id: "2", description: "something", image: "app/assets/images/2.png")
Nook.create!(name: "Koernook Park", coordinates: "52.471646, 13.438770", user_id: "3", description: "something", image: "app/assets/images/3.png")
Nook.create!(name: "Buchspark Friedrichshain", coordinates: "52.527266, 13.434275", user_id: "4", description: "something", image: "app/assets/images/4.png")

puts "Done :D"
