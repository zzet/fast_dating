# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :video do
    name "MyString"
    description "MyText"
    code "MyText"
    sort 1
    state "MyString"
  end
end
