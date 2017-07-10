FactoryGirl.define do
  factory :event do
    name              { Faker::Name.name }
    description       { Faker::Lorem.sentence(1) }
    location          { Faker::Address.city }
    price             { Faker::Commerce.price }
    capacity          2000
    includes_food     false
    includes_drinks   false
    starts_at         '2017-07-15'
    ends_at           '2017-07-16'
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
