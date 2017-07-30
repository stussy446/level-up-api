

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


5.times do
  User.create(first_name: Faker::Name.first_name , last_name: Faker::Name.last_name, email: Faker::Internet.email, username: Faker::Internet.user_name, password: "password")
end

10.times do
  Achievement.create(name: Faker::Name.title, description: "DESCRIPTION PLACEHOLDER", points: rand(0..30))
end

UserAchievement.create(user_id: 1, achievement_id: 1, completed: true)
UserAchievement.create(user_id: 1, achievement_id: 2, completed: false)

UserAchievement.create(user_id: 2, achievement_id: 1, completed: false)
UserAchievement.create(user_id: 2, achievement_id: 2, completed: false)
UserAchievement.create(user_id: 2, achievement_id: 3, completed: false)
UserAchievement.create(user_id: 2, achievement_id: 4, completed: false)








