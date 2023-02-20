FactoryBot.define do
  factory :booking do
    checkin { Faker::Time.between(from: Time.now, to: Time.now) }
    checkout { Faker::Time.between(from: checkin, to: DateTime.now + 2.minutes) }
    association :room
  end
end