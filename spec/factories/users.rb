require 'faker'
FactoryBot.define do
  factory :user do
    name { Faker::Name.name }
    email { nil }
  end
end
