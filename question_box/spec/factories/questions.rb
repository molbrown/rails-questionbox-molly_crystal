FactoryBot.define do
    factory :question do
        title    { Faker::Lorem.word }
        body     { Faker::Lorem.paragraph }
        user     { create(:user) }
    end
end