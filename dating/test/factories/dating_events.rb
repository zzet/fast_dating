# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :dating_event do
    event_date { generate :date }
    name { generate :string }
    description { generate :string }
    state "published"
    limit { generate :number }
    time_start { generate :time }
    time_end { generate :time }
  end
end
