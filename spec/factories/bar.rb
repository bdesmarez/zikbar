FactoryGirl.define do
  factory :bar do
    name        { Faker::Name.name }
    city        { Faker::Address.city }
    country     'fr'
    address     { Faker::Address.street_address }
    association :drink_style, factory: :drink_style
    association :zik_style,   factory: :zik_style
  end

end
