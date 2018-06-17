FactoryBot.define do
    factory :answer do
        text        { Faker::Lorem.sentences }
        user        { create(:user) }
        question    { create(:question) }
    end
end