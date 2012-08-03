# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :video do
    name { generate :string }
    description { generate :string }
    code { generate :string }
    sort { generate :string }
    state "published"
  end
end
