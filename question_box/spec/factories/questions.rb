FactoryBot.define do
    factory :question do
        title    { Faker::Lorem.sentence }
        body     { Faker::Lorem.paragraph }
        user     { create(:user) }
    end
end