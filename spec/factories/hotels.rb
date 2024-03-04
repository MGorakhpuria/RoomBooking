require 'faker'
FactoryBot.define do
  factory :hotel do
    name { Faker::Name.name }
    description { Faker::Lorem.paragraphs }
    city { Faker::Address.city }
    state { Faker::Address.state }
    company
  end
end
