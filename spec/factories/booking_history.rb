FactoryBot.define do
  factory :booking_history do
    checkin { Faker::Time.between(from: Time.now, to: Time.now) }
    checkout { Faker::Time.between(from: checkin, to: DateTime.now + 2.minutes) }
    price { 30 }
    total_price { 60 }
    charged { false }
    total_time_at_room { 2 }
  end
end