# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :place_asset, :class => 'Place::Asset' do
    name "MyString"
    description "MyText"
    file "MyString"
  end
end
