User.destroy_all

miriam = User.create!(email: "miriam@codaisseurupb.com", password: "abcd1234")

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
