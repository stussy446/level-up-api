

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Achievement.destroy_all
UserAchievement.destroy_all
Avatar.destroy_all

5.times do
  User.create(username: Faker::Internet.user_name, password: "password")
end

10.times do
  Achievement.create(name: Faker::Name.title, description: "DESCRIPTION PLACEHOLDER", points: rand(0..30))
end

10.times do
UserAchievement.create(user: User.all.sample, achievement: Achievement.all.sample, completed: true)

UserAchievement.create(user: User.all.sample, achievement: Achievement.all.sample, completed: false)
end

5.times do
  Avatar.create(user: User.all.sample, name: Faker::Name.first_name, img: "PLACEHOLDER FOR IMAGE STRING")
end









