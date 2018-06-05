# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'

User.create!(
    username: 'Seed',
    password_digest: 'k67nbiyuobvwihfb'
)

20.times do
    Question.create!(
        title: Faker::Lorem.question,
        body: Faker::Lorem.paragraph,
        user_id: 1
    )
    end