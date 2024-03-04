require 'faker'
FactoryBot.define do
  factory :company do
    name { Faker::Name.name }
    description { Faker::Lorem.paragraphs}
  end
end
