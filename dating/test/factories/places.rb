# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :place do
    name "MyString"
    description "MyText"
    state "MyString"
    limit 1
    map "MyText"
    latitude "MyString"
    longitude "MyString"
  end
end
