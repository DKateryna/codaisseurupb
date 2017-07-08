FactoryGirl.define do
  factory :event do
    name              'Buite Westen'
    description       { Faker::Lorem.sentence(1) }
    location          { Faker::Address.city }
    price             { Faker::Commerce.price }
    capacity          2000
    includes_food     false
    includes_drinks   false
    starts_at         { Faker::Date.starts_at }
    ends_at           { Fake::Date.ends_at }
    active            true
    user              { build(:user) }

    trait :active do
      active true
    end

    trait :inactive do
      active false
    end
  end
end
