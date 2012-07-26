# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :request do
    cost { generate :number }
    coupone_code { generate :string }
    name { generate :string }
    phone { generate :string }
    email { generate :string }
    sex { generate :string }
    birthdate { generate :date }
  end

  factory :user_request, :parent => :request do

  end
end
