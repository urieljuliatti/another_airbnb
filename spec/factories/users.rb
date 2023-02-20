FactoryBot.define do
  factory :admin do
    email { Faker::Internet.email }
    password { '12345678' }
    password_confirmation { password }
    admin { true }
    
    factory :user do
      admin { false }
    end
  end
end