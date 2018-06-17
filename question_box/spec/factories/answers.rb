FactoryBot.define do
    factory :answer do
        text        { Faker::Lorem.sentence }
        user        { create(:user) }
        question    { create(:question) }
    end
end