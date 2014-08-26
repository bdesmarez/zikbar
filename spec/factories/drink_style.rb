FactoryGirl.define do
  factory :drink_style do
    name  Faker::Lorem.word
    note  Faker::Number.digit
  end

end
