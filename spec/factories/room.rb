FactoryBot.define do
  factory :room do
    title { Faker::Lorem.word }
    body { Faker::Lorem.sentence }
    checked { false }
  end
end