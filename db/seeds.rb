User.destroy_all

miriam = User.create!(email: "miriam@codaisseurupb.com", password: "abcd1234")
tom = User.create(email: "tom@cat.com", password: "meowmeow")

event = Event.create!(name: "Buite Westen",
  description: "Electronic and house music remains the primary focus of this multi-faceted festival.",
  location: "Ouderkerk aan de Amstel",
  price: 45,
  capacity: 2000,
  includes_food: false,
  includes_drinks: false,
  starts_at: DateTime.new(2017, 7, 15),
  ends_at: DateTime.new(2017,7,16),
  updated_at: DateTime.new(2017,7,4),
  active: true,
  user: miriam)

  event2 = Event.create(name: "Neighborhood party",
          description: "Summer Block Party: Meet With New Neighbors",
          location: "Amsterdam",
          price: 0,
          capacity: 100,
          includes_food: true,
          includes_drinks: true,
          starts_at: DateTime.new(2017, 7, 7),
          ends_at: DateTime.new(2017, 7, 7),
          active: true,
          user: tom)
