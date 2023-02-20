FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    password { '12345678' }
    password_confirmation { password }
    admin { true }
    
    factory :admin do
      admin { false }
    end
  end
end