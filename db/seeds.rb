require "open-uri"

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

a = Nook.new(
  name: "Buchplatz am Kaisersteg",
  latitude: 52.457690,
  longitude: 13.518904,
  address: "Hasselwerderstraße 22, 12439 Berlin",
  user: bretty,
  description: "A beautiful riverside spot with plenty of trees to watch the boats pass while reading. Great sunset sun!",
  coffee: true,
  wifi: true,
  water: true,
  quiet: false,
  trees: false,
  power: true,
  seating: false,
  shelter: true,
  animals: false,
  cost: true,
  bathroom: false,
  view: false
)
a1 = "https://res.cloudinary.com/dqt6q0bpd/image/upload/v1693814744/LITLOOP/1.%20Buchplatz%20am%20Kaisersteg/Screenshot_2023-09-04_at_10.05.29_es118u.png"
a2 = "https://res.cloudinary.com/dqt6q0bpd/image/upload/v1693814747/LITLOOP/1.%20Buchplatz%20am%20Kaisersteg/Screenshot_2023-09-04_at_10.05.43_trmkii.png"
a3 = "https://res.cloudinary.com/dqt6q0bpd/image/upload/v1693814693/LITLOOP/1.%20Buchplatz%20am%20Kaisersteg/Screenshot_2023-09-04_at_10.04.29_ukj0af.png"
a4 = "https://res.cloudinary.com/dqt6q0bpd/image/upload/v1693814654/LITLOOP/1.%20Buchplatz%20am%20Kaisersteg/Screenshot_2023-09-04_at_10.04.09_hwxchs.png"
a5 = "https://res.cloudinary.com/dqt6q0bpd/image/upload/v1693814696/LITLOOP/1.%20Buchplatz%20am%20Kaisersteg/Screenshot_2023-09-04_at_10.04.52_rtrh01.png"
a6 = "https://res.cloudinary.com/dqt6q0bpd/image/upload/v1693814591/LITLOOP/1.%20Buchplatz%20am%20Kaisersteg/Screenshot_2023-09-04_at_10.03.06_wlvcvd.png"
a7 = "https://res.cloudinary.com/dqt6q0bpd/image/upload/v1693814713/LITLOOP/1.%20Buchplatz%20am%20Kaisersteg/Screenshot_2023-09-04_at_10.05.08_rpghn6.png"
a8 = "https://res.cloudinary.com/dqt6q0bpd/image/upload/v1693814630/LITLOOP/1.%20Buchplatz%20am%20Kaisersteg/Screenshot_2023-09-04_at_10.03.47_qwinaz.png"

a_photos = [a1, a2, a3, a4, a5, a6, a7, a8]

a_photos.each_with_index do |photo, index|
  file = URI.open(photo)
  a.photos.attach(io: file, filename: "#{index + 1}.png", content_type: "image/png")
  a.save!
end

b = Nook.create!(
  name: "Tempelhofer Aussicht",
  latitude: 52.465878,
  longitude: 13.405435,
  address: "Berliner Innenstadt, 12101 Berlin",
  user: nadjalovesyoga,
  description: "Perfect place to watch the kites and read to the sound of kids playing.",
  coffee: false,
  wifi: true,
  water: false,
  quiet: true,
  trees: false,
  power: true,
  seating: false,
  shelter: true,
  animals: false,
  cost: true,
  bathroom: false,
  view: true
)
b1 = "https://res.cloudinary.com/dqt6q0bpd/image/upload/v1693815005/LITLOOP/2.%20Tempelhofer%20Aussicht/Screenshot_2023-09-04_at_10.10.00_qdiuki.png"
b2 = "https://res.cloudinary.com/dqt6q0bpd/image/upload/v1693815077/LITLOOP/2.%20Tempelhofer%20Aussicht/Screenshot_2023-09-04_at_10.11.13_jd690m.png"
b3 = "https://res.cloudinary.com/dqt6q0bpd/image/upload/v1693815055/LITLOOP/2.%20Tempelhofer%20Aussicht/Screenshot_2023-09-04_at_10.10.51_bi0kid.png"
b4 = "https://res.cloudinary.com/dqt6q0bpd/image/upload/v1693815038/LITLOOP/2.%20Tempelhofer%20Aussicht/Screenshot_2023-09-04_at_10.10.34_ghlcx7.png"
b5 = "https://res.cloudinary.com/dqt6q0bpd/image/upload/v1693814951/LITLOOP/2.%20Tempelhofer%20Aussicht/Screenshot_2023-09-04_at_10.08.53_wgwuo0.png"
b6 = "https://res.cloudinary.com/dqt6q0bpd/image/upload/v1693814952/LITLOOP/2.%20Tempelhofer%20Aussicht/Screenshot_2023-09-04_at_10.09.08_vnkg4b.png"
b7 = "https://res.cloudinary.com/dqt6q0bpd/image/upload/v1693815020/LITLOOP/2.%20Tempelhofer%20Aussicht/Screenshot_2023-09-04_at_10.10.16_dernsy.png"
b8 = "https://res.cloudinary.com/dqt6q0bpd/image/upload/v1693814788/LITLOOP/2.%20Tempelhofer%20Aussicht/Screenshot_2023-09-04_at_10.06.23_mbxu1b.png"

b_photos = [b1, b2, b3, b4, b5, b6, b7, b8]

b_photos.each_with_index do |photo, index|
  file = URI.open(photo)
  b.photos.attach(io: file, filename: "#{index + 1}.png", content_type: "image/png")
  b.save!
end

c = Nook.create!(
  name: "Koernook Park",
  latitude: 52.457690,
  longitude: 13.518904,
  address: "Schierker Strasse, 12051 Berlin",
  user: irenikachan,
  description: "Beautiful park, so much space and trees. Usually quiet as it's not a sport area.",
  coffee: true,
  wifi: true,
  water: true,
  quiet: true,
  trees: true,
  power: true,
  seating: false,
  shelter: false,
  animals: false,
  cost: false,
  bathroom: false,
  view: false
)
c1 = "https://res.cloudinary.com/dqt6q0bpd/image/upload/v1693815138/LITLOOP/3.%20Koernook%20Park/Screenshot_2023-09-04_at_10.12.05_hjclit.png"
c2 = "https://res.cloudinary.com/dqt6q0bpd/image/upload/v1693815149/LITLOOP/3.%20Koernook%20Park/Screenshot_2023-09-04_at_10.12.16_kuvm8o.png"
c3 = "https://res.cloudinary.com/dqt6q0bpd/image/upload/v1693815274/LITLOOP/3.%20Koernook%20Park/Screenshot_2023-09-04_at_10.14.29_c0c6im.png"
c4 = "https://res.cloudinary.com/dqt6q0bpd/image/upload/v1693815372/LITLOOP/3.%20Koernook%20Park/Screenshot_2023-09-04_at_10.16.06_yjh7uw.png"
c5 = "https://res.cloudinary.com/dqt6q0bpd/image/upload/v1693815313/LITLOOP/3.%20Koernook%20Park/Screenshot_2023-09-04_at_10.15.08_mqpnvk.png"
c6 = "https://res.cloudinary.com/dqt6q0bpd/image/upload/v1693815231/LITLOOP/3.%20Koernook%20Park/Screenshot_2023-09-04_at_10.13.34_nd1k80.png"
c7 = "https://res.cloudinary.com/dqt6q0bpd/image/upload/v1693815234/LITLOOP/3.%20Koernook%20Park/Screenshot_2023-09-04_at_10.13.49_omxlej.png"
c8 = "https://res.cloudinary.com/dqt6q0bpd/image/upload/v1693815184/LITLOOP/3.%20Koernook%20Park/Screenshot_2023-09-04_at_10.12.59_noatuo.png"

c_photos = [c1, c2, c3, c4, c5, c6, c7, c8]

c_photos.each_with_index do |photo, index|
  file = URI.open(photo)
  c.photos.attach(io: file, filename: "#{index + 1}.png", content_type: "image/png")
  c.save!
end

d = Nook.create!(
  name: "Dick's Kiss at Templehof",
  latitude: 52.473001,
  longitude: 13.414583,
  address: "Berliner Innenstadt, 12101 Berlin",
  user: nickynicole,
  description: "Great spot that isn't as busy as the rest of the Feld.",
  coffee: false,
  wifi: false,
  water: false,
  quiet: false,
  trees: false,
  power: true,
  seating: true,
  shelter: true,
  animals: true,
  cost: true,
  bathroom: false,
  view: false
)
d1 = "https://res.cloudinary.com/dqt6q0bpd/image/upload/v1693815564/LITLOOP/4.%20Dick%27s%20Kiss%20at%20Templehof/Screenshot_2023-09-04_at_10.19.19_srfwbk.png"
d2 = "https://res.cloudinary.com/dqt6q0bpd/image/upload/v1693815715/LITLOOP/4.%20Dick%27s%20Kiss%20at%20Templehof/Screenshot_2023-09-04_at_10.21.48_l2bdue.png"
d3 = "https://res.cloudinary.com/dqt6q0bpd/image/upload/v1693815533/LITLOOP/4.%20Dick%27s%20Kiss%20at%20Templehof/Screenshot_2023-09-04_at_10.18.48_tjbvya.png"
d4 = "https://res.cloudinary.com/dqt6q0bpd/image/upload/v1693815499/LITLOOP/4.%20Dick%27s%20Kiss%20at%20Templehof/Screenshot_2023-09-04_at_10.17.54_xgslvx.png"
d5 = "https://res.cloudinary.com/dqt6q0bpd/image/upload/v1693815458/LITLOOP/4.%20Dick%27s%20Kiss%20at%20Templehof/Screenshot_2023-09-04_at_10.17.15_p9px3e.png"
d6 = "https://res.cloudinary.com/dqt6q0bpd/image/upload/v1693815711/LITLOOP/4.%20Dick%27s%20Kiss%20at%20Templehof/Screenshot_2023-09-04_at_10.21.13_eft4x3.png"
d7 = "https://res.cloudinary.com/dqt6q0bpd/image/upload/v1693815504/LITLOOP/4.%20Dick%27s%20Kiss%20at%20Templehof/Screenshot_2023-09-04_at_10.18.18_fdo6xe.png"
d8 = "https://res.cloudinary.com/dqt6q0bpd/image/upload/v1693815476/LITLOOP/4.%20Dick%27s%20Kiss%20at%20Templehof/Screenshot_2023-09-04_at_10.17.37_nzwrxr.png"

d_photos = [d1, d2, d3, d4, d5, d6, d7, d8]

d_photos.each_with_index do |photo, index|
  file = URI.open(photo)
  d.photos.attach(io: file, filename: "#{index + 1}.png", content_type: "image/png")
  d.save!
end

e = Nook.create!(
  name: "Orlando in Tiergarten",
  latitude: 52.513032,
  longitude: 13.356047,
  address: "Berliner Innenstadt, 10785 Berlin",
  user: bretty,
  description: "THe perfect place to spread out a picnic blanket and spend a day reading!",
  coffee: false,
  wifi: false,
  water: false,
  quiet: false,
  trees: false,
  power: true,
  seating: true,
  shelter: true,
  animals: true,
  cost: true,
  bathroom: false,
  view: false
)
e1 = "https://res.cloudinary.com/dqt6q0bpd/image/upload/v1693815941/LITLOOP/5.%20Orlando%20in%20Tiergarten/Screenshot_2023-09-04_at_10.25.16_kkxhyq.png"
e2 = "https://res.cloudinary.com/dqt6q0bpd/image/upload/v1693815920/LITLOOP/5.%20Orlando%20in%20Tiergarten/Screenshot_2023-09-04_at_10.24.56_avkpe9.png"
e3 = "https://res.cloudinary.com/dqt6q0bpd/image/upload/v1693815901/LITLOOP/5.%20Orlando%20in%20Tiergarten/Screenshot_2023-09-04_at_10.24.40_dteg0l.png"
e4 = "https://res.cloudinary.com/dqt6q0bpd/image/upload/v1693815748/LITLOOP/5.%20Orlando%20in%20Tiergarten/Screenshot_2023-09-04_at_10.22.23_xwhsub.png"
e5 = "https://res.cloudinary.com/dqt6q0bpd/image/upload/v1693816007/LITLOOP/5.%20Orlando%20in%20Tiergarten/Screenshot_2023-09-04_at_10.26.42_qtqtjm.png"
e6 = "https://res.cloudinary.com/dqt6q0bpd/image/upload/v1693816010/LITLOOP/5.%20Orlando%20in%20Tiergarten/Screenshot_2023-09-04_at_10.26.23_hvhuk7.png"
e7 = "https://res.cloudinary.com/dqt6q0bpd/image/upload/v1693815964/LITLOOP/5.%20Orlando%20in%20Tiergarten/Screenshot_2023-09-04_at_10.25.59_r7uyo0.png"
e8 = "https://res.cloudinary.com/dqt6q0bpd/image/upload/v1693815985/LITLOOP/5.%20Orlando%20in%20Tiergarten/Screenshot_2023-09-04_at_10.25.37_i4hhql.png"

e_photos = [e1, e2, e3, e4, e5, e6, e7, e8]

e_photos.each_with_index do |photo, index|
  file = URI.open(photo)
  e.photos.attach(io: file, filename: "#{index + 1}.png", content_type: "image/png")
  e.save!
end

f = Nook.create!(
  name: "Reading with swans!! :)",
  latitude: 52.495608,
  longitude: 13.407432,
  address: "Berliner Innenstadt, 10967 Berlin",
  user: nadjalovesyoga,
  description: "A lively area with lots of wildlife to keep it interesting.",
  coffee: false,
  wifi: false,
  water: true,
  quiet: false,
  trees: false,
  power: false,
  seating: false,
  shelter: false,
  animals: true,
  cost: true,
  bathroom: true,
  view: false
)
f1 = "https://res.cloudinary.com/dqt6q0bpd/image/upload/v1693816132/LITLOOP/6.%20Reading%20with%20swans%21%21%20:%29/Screenshot_2023-09-04_at_10.28.33_g0dvqc.png"
f2 = "https://res.cloudinary.com/dqt6q0bpd/image/upload/v1693816156/LITLOOP/6.%20Reading%20with%20swans%21%21%20:%29/Screenshot_2023-09-04_at_10.28.49_w9y4yb.png"
f3 = "https://res.cloudinary.com/dqt6q0bpd/image/upload/v1693816205/LITLOOP/6.%20Reading%20with%20swans%21%21%20:%29/Screenshot_2023-09-04_at_10.29.59_iqhik0.png"
f4 = "https://res.cloudinary.com/dqt6q0bpd/image/upload/v1693816179/LITLOOP/6.%20Reading%20with%20swans%21%21%20:%29/Screenshot_2023-09-04_at_10.29.13_bhuunj.png"
f5 = "https://res.cloudinary.com/dqt6q0bpd/image/upload/v1693816253/LITLOOP/6.%20Reading%20with%20swans%21%21%20:%29/Screenshot_2023-09-04_at_10.30.35_lnw1tz.png"
f6 = "https://res.cloudinary.com/dqt6q0bpd/image/upload/v1693816310/LITLOOP/6.%20Reading%20with%20swans%21%21%20:%29/Screenshot_2023-09-04_at_10.31.44_qnosqo.png"
f7 = "https://res.cloudinary.com/dqt6q0bpd/image/upload/v1693816183/LITLOOP/6.%20Reading%20with%20swans%21%21%20:%29/Screenshot_2023-09-04_at_10.29.37_tciiko.png"
f8 = "https://res.cloudinary.com/dqt6q0bpd/image/upload/v1693816306/LITLOOP/6.%20Reading%20with%20swans%21%21%20:%29/Screenshot_2023-09-04_at_10.30.51_lwilrw.png"

f_photos = [f1, f2, f3, f4, f5, f6, f7, f8]

f_photos.each_with_index do |photo, index|
  file = URI.open(photo)
  f.photos.attach(io: file, filename: "#{index + 1}.png", content_type: "image/png")
  f.save!
end

g = Nook.create!(
  name: "Buchspark Friedrichshain",
  latitude: 52.527266,
  longitude: 13.434275,
  address: "Berliner Innenstadt, 10249 Berlin",
  user: irenikachan,
  description: "Great coffe cart nearby, very quiet and lots of trees.",
  coffee: true,
  wifi: true,
  water: true,
  quiet: false,
  trees: false,
  power: true,
  seating: true,
  shelter: false,
  animals: false,
  cost: true,
  bathroom: false,
  view: false
)
g1 = "https://res.cloudinary.com/dqt6q0bpd/image/upload/v1693816485/LITLOOP/7.%20Buchspark%20Friedrichshain/Screenshot_2023-09-04_at_10.34.39_t79rwb.png"
g2 = "https://res.cloudinary.com/dqt6q0bpd/image/upload/v1693816458/LITLOOP/7.%20Buchspark%20Friedrichshain/Screenshot_2023-09-04_at_10.34.12_n7ogoj.png"
g3 = "https://res.cloudinary.com/dqt6q0bpd/image/upload/v1693816421/LITLOOP/7.%20Buchspark%20Friedrichshain/Screenshot_2023-09-04_at_10.33.36_bhoos3.png"
g4 = "https://res.cloudinary.com/dqt6q0bpd/image/upload/v1693816371/LITLOOP/7.%20Buchspark%20Friedrichshain/Screenshot_2023-09-04_at_10.32.35_pfmso0.png"
g5 = "https://res.cloudinary.com/dqt6q0bpd/image/upload/v1693816462/LITLOOP/7.%20Buchspark%20Friedrichshain/Screenshot_2023-09-04_at_10.33.54_w3uyoc.png"
g6 = "https://res.cloudinary.com/dqt6q0bpd/image/upload/v1693816438/LITLOOP/7.%20Buchspark%20Friedrichshain/Screenshot_2023-09-04_at_10.33.10_xqvzz3.png"
g7 = "https://res.cloudinary.com/dqt6q0bpd/image/upload/v1693816519/LITLOOP/7.%20Buchspark%20Friedrichshain/Screenshot_2023-09-04_at_10.35.09_ioni2u.png"
g8 = "https://res.cloudinary.com/dqt6q0bpd/image/upload/v1693816393/LITLOOP/7.%20Buchspark%20Friedrichshain/Screenshot_2023-09-04_at_10.32.49_klunqq.png"

g_photos = [g1, g2, g3, g4, g5, g6, g7, g8]

g_photos.each_with_index do |photo, index|
  file = URI.open(photo)
  g.photos.attach(io: file, filename: "#{index + 1}.png", content_type: "image/png")
  g.save!
end

puts "Done :D"
