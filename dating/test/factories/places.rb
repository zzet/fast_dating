# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :place do
    name { generate :string }
    description { generate :string }
    state "published"
    limit { generate :number }
    map { generate :strng }
    latitude { generate :strng }
    longitude { generate :strng }
  end
end
