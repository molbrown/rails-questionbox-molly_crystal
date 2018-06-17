FactoryBot.define do
    factory :user do
        username              { Faker::Internet.user_name }
        password              { Faker::Internet.password }
        password_confirmation { password }
        email_address         { Faker::Internet.email }
    end
  end