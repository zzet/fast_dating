# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :dating_event do
    event_date "2012-08-02"
    name "MyString"
    description "MyText"
    place_id 1
    state "MyString"
    limit 1
    time_start "2012-08-02 21:38:46"
    time_end "2012-08-02 21:38:46"
  end
end
