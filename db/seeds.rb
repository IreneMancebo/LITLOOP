# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

puts "Cleaning the Database 🧼"
sleep(1)
Nook.destroy_all
User.destroy_all

puts "Creating Users 🙋🏻‍♀️ 🧙🏼‍♂️ 🤷🏻‍♀️ 👩🏻‍🦰"
sleep(1)
bretty = User.create!(username: "bretty", email: "brett@litloop.com", password: "password")
nadjalovesyoga = User.create!(username: "nadjalovesyoga", email: "nadja@litloop.com", password: "password")
irenikachan = User.create!(username: "irenikachan", email: "irene@litloop.com", password: "password")
nickynicole = User.create!(username: "nickynicole", email: "nicole@litloop.com", password: "password")

puts "Creating Nooks 📖 📚 📇"
sleep(1)

Nook.create!(
  name: "Buchplatz am Kaisersteg",
  latitude: 52.457690,
  longitude: 13.518904,
  user: bretty,
  description: "something",
  image: "app/assets/images/1.png"
)

Nook.create!(
  name: "Tempelhofer Aussicht",
  latitude: 52.465878,
  longitude: 13.405435,
  user: nadjalovesyoga,
  description: "something",
  image: "app/assets/images/2.png"
)

Nook.create!(
  name: "Koernook Park",
  latitude: 52.471646,
  longitude: 13.438770,
  user: irenikachan,
  description: "something",
  image: "app/assets/images/3.png"
)

Nook.create!(
  name: "Dick's kiss at Templehof",
  latitude: 52.473001,
  longitude: 13.414583,
  user: nickynicole,
  description: "This spot at Tempelhofer feld is a very cool BookNook to read (especially when it's summer or the sun is up), if you are lucky and can get one of the elevated seats facing the sunset you will have a great reading moment as I had reading Un beso a Dick by Fernando Molano Vargas.",
  image: "app/assets/images/4.png"
)
Nook.create!(
  name: "Orlando in Tiergarten",
  latitude: 52.513032,
  longitude: 13.356047,
  user: bretty,
  description: "Here I started to read the first pages of Orlando, by Virginia Woolf. Any of the esplanades in this park are perfect for reading! I even saw a fox which made my reading experience even more magical!",
  image: "app/assets/images/5.png"
)

Nook.create!(
  name: "Reading with swans!! :)",
  latitude: 52.495608,
  longitude: 13.407432,
  user: nadjalovesyoga,
  description: "In this place (Urbanhafen) I read the last chapters of Bajar es lo peor by Mariana Enriquez, an incredible Argentinean writer. It couldn't be any other way than finishing this book that I enjoyed so much in one of my favorite spots in Berlin! next to the swans and ducks and surrounded by trees.",
  image: "app/assets/images/6.png"
)

Nook.create!(
  name: "Buchspark Friedrichshain",
  latitude: 52.527266,
  longitude: 13.434275,
  user: irenikachan,
  description: "something",
  image: "app/assets/images/7.png"
)

puts "Done :D"
