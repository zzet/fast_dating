# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    email
    password {generate :string}
    remember_me false
    firstname {generate :string}
    lastname {generate :string}
    nickname {generate :string}
    #avatar { fixture_file_upload("test/fixtures/files/rails.png", "image/png") }
    weburl {generate :string}
  end
end
