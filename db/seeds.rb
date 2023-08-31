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

Nook.create!(
  name: "Buchplatz am Kaisersteg",
  coordinates: "52.457690, 13.518904",
  user_id: "1",
  description: "something",
  image: "app/assets/images/1.png"
)
Nook.create!(
  name: "Tempelhofer Aussicht",
  coordinates: "52.465878, 13.405435",
  user_id: "2",
  description: "Idyllic lakeside knoll with wild birds. Lots of trees for shelter and shade. Good grass.
                Busy with people walking through, but still peaceful.",
  image: "app/assets/images/2.png"
)
Nook.create!(
  name: "Koernook Park",
  coordinates: "52.471646, 13.438770",
  user_id: "3",
  description: "something",
  image: "app/assets/images/3.png"
)
Nook.create!(
  name: "Dick's kiss at Templehof",
  coordinates: "52.473001, 13.414583",
  user_id: "4",
  description: "This spot at Tempelhofer feld is a very cool BookNook to read
                (especially when it's summer or the sun is up), if you are lucky and can get one of the elevated seats
                facing the sunset you will have a great reading moment as I had reading Un beso a Dick by
                Fernando Molano Vargas.",
  image: "app/assets/images/4.png"
)
Nook.create!(
  name: "Orlando in Tiergarten",
  coordinates: "52.513032, 13.356047",
  user_id: "1",
  description: "Here I started to read the first pages of Orlando, by Virginia Woolf. Any of the esplanades
                in this park are perfect for reading! I even saw a fox which made my reading experience
                even more magical!",
  image: "app/assets/images/5.png"
)
Nook.create!(
  name: "Reading with swans!! :)",
  coordinates: "52.495608, 13.407432",
  user_id: "2",
  description: "In this place (Urbanhafen) I read the last chapters of Bajar es lo peor by Mariana Enriquez,
                an incredible Argentinean writer. It couldn't be any other way than finishing this book that I enjoyed
                so much in one of my favorite spots in Berlin! next to the swans and ducks and surrounded by trees.",
  image: "app/assets/images/6.png"
)
Nook.create!(
  name: "Buchspark Friedrichshain",
  coordinates: "52.527266, 13.434275",
  user_id: "3",
  description: "something",
  image: "app/assets/images/7.png"
)

puts "Done :D"
