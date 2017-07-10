Photo.destroy_all
Category.destroy_all
Event.destroy_all
Profile.destroy_all
User.destroy_all

music = Category.create!(name: 'Looking for a rhythm together.')
tourism = Category.create!(name: 'Discover the world together!')
hobby = Category.create!(name: 'Connect and Interact with other hobby enthusiasts that share your excitement.')

miriam = User.create!(email: 'miriam@codaisseurupb.com', password: 'abcd1234')
tom = User.create(email: 'tom@cat.com', password: 'meowmeow')
matt = User.create(email: 'matt@codaisseurbnb.com', password: 'abcd1234')

event = Event.create!(name: 'Buite Westen',
                      description: 'Electronic and house music remains the primary focus of this multi-faceted festival.',
                      location: 'Ouderkerk aan de Amstel',
                      price: 45,
                      capacity: 2000,
                      includes_food: false,
                      includes_drinks: false,
                      starts_at: DateTime.new(2017, 7, 15),
                      ends_at: DateTime.new(2017, 7, 16),
                      updated_at: DateTime.new(2017, 7, 4),
                      active: true,
                      user: miriam)

event2 = Event.create!(name: 'Yoga lesson',
                       description: 'If you want to do yoga, at any age, weight, or strength level, we welcome you.',
                       location: 'Amsterdam',
                       price: 10,
                       capacity: 15,
                       includes_food: true,
                       includes_drinks: true,
                       starts_at: DateTime.new(2017 / 0o7 / 15),
                       ends_at: DateTime.new(2017 / 0o7 / 16),
                       active: true,
                       user: tom)

# Photos
photo1 = Photo.create!(remote_image_url: 'http://res.cloudinary.com/djzs167i3/image/upload/v1499346114/images_lvhx7n.jpg', event: event)
photo2 = Photo.create!(remote_image_url: 'http://res.cloudinary.com/djzs167i3/image/upload/v1499346114/images_1_wcemqz.jpg', event: event)
photo3 = Photo.create!(remote_image_url: 'http://res.cloudinary.com/djzs167i3/image/upload/v1499346114/images_2_fjnt1i.jpg', event: event)

photo4 = Photo.create!(remote_image_url: 'http://res.cloudinary.com/djzs167i3/image/upload/v1499346508/images_4_cgl7li.jpg', event: event2)
photo5 = Photo.create!(remote_image_url: 'http://res.cloudinary.com/djzs167i3/image/upload/v1499346508/images_3_yeepna.jpg', event: event2)
