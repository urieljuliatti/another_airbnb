FactoryBot.define do
  factory :room do
    title { Faker::Lorem.word }
    body { Faker::Lorem.sentence }
    price { 30 }
    checked { false }
  end
end