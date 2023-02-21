FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    password { '12345678' }
    password_confirmation { password }
    admin { true }
    
    factory :customer do
      admin { false }
    end
  end
end