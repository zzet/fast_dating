# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :place do
    name { generate :string }
    description { generate :string }
    state "published"
    limit { generate :number }
    map { generate :string }
    latitude { generate :string }
    longitude { generate :string }
  end
end
