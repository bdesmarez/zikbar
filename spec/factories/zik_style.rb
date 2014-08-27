FactoryGirl.define do
  factory :zik_style do
    name  { Faker::Lorem.word }
    note  { Faker::Number.digit }
  end

end
