FactoryBot.define do
  factory :user do
    name { "MyString" }
    email { Faker::Internet.email }
    password { "cattitude11" }
    password_confirmation { "cattitude11" }
  end
end
