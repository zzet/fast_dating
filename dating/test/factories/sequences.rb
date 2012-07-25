FactoryGirl.define do

  sequence :email do |n|
    "email-#{n}@example.com"
  end

  sequence :name do |n|
    "name-#{n}"
  end

  sequence :string do |n|
    "string-#{n}"
  end

  sequence :date do
    Date.today
  end

  sequence :time do
    Time.now
  end

  sequence :number do |n|
    n
  end
end
