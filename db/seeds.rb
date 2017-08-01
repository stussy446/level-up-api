

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

1.times do
  User.create(username: "Username1", password: "password")
end

30.times do
  Achievement.create(name: Faker::Name.title, description: Faker::Lorem.paragraph, points: rand(10..30))
end

first_user = User.first

4.times do
  UserAchievement.create(user: first_user, achievement: Achievement.all.sample, completed: true)

  UserAchievement.create(user: first_user, achievement: Achievement.all.sample, completed: false)
end



1.times do
  Avatar.create(user: first_user, name: Faker::Name.first_name, img: "PLACEHOLDER FOR IMAGE STRING")
end









