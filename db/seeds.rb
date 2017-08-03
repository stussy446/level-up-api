

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
Comment.destroy_all


# user
1.times do
  User.create(username: "hottitotti314", password: "password")
end

1.times do
  User.create(username: "kpuplovesthegiants247", password: "password")
end

first_user = User.first
second_user = User.second

#

1.times do
  Avatar.create(user: first_user, name: "Marissa", img: "PLACEHOLDER FOR IMAGE STRING")
end

1.times do
  Avatar.create(user: second_user, name: "Lou Seal", img: "images/Avatar_gifs/Worgen/Worgen_5_flex.gif")
end

#


Achievement.create(name: "The Horse Tamer", description: "To complete this achievement, learn to ride a horse! Not only is this fun, but now you're like three times cooler cause you can ride a horse.", points: 50)
Achievement.create(name: "The Book Worm", description: "To complete this achievement, you must finish one book!", points: 30)
Achievement.create(name: "The Worm of all Books", description: "To complete this achievement, you must write a book. This is much harder than just reading a book, so get your creative juices flowing!", points: 100)
Achievement.create(name: "Rordon Gamsey", description: "To complete this achievement, you must learn a cooking recipe of your choice and prepare the meal yourself.", points: 50)
Achievement.create(name: "Kitchen Code 420", description: "To complete this achievement, you must learn a baking recipe and bake something of your choice. Disclaimer: you cannot complete this assignment by getting baked", points: 50)
Achievement.create(name: "Piano Man", description: "To complete this achievement, learn to play the piano. You don't have to be as good as Billy Joel.", points: 80)
Achievement.create(name: "Hackerman", description: "To complete this achievement, you must learn how to build a computer from scratch! Do some research and don't assemble your expensive parts on carpet!", points: 30)
Achievement.create(name: "Schrute Greenfingers", description: "To complete this achievement, you must grow a garden! You can only grow beets. Bears. Battlestar Galactica.", points: 90)
Achievement.create(name: "RollerCoaster Rumpus", description: "To complete this achievement, you must ride a rollercoaster without vomiting, gross.", points: 10)
Achievement.create(name: "RollerCoaster Rumpus V2", description: "To complete this achievement, you must ride a rollercoaster with vomiting, wow that's a lot of points!", points: 50)
Achievement.create(name: "Cat-Man and Dog-Woman", description: "To complete this achievement, you must adopt a new dog or a cat! dogs are better by the way", points: 120)
Achievement.create(name: "Fire Breather", description: "To complete this achievement, you must consume a ghost chili pepper and survive! If you don't survive, the point are not redeemable, yikes! Sorry!", points: 50)
Achievement.create(name: "The neighborhood's crazy person", description: "To complete this achievement, you must witness a UFO", points: 250)
Achievement.create(name: "Mile-High-Club", description: "To complete this achievement, you know what to do.", points: 200)
Achievement.create(name: "The Scranton Strangler", description: "To complete this achievement, you must make your own DIY Halloween costume!", points: 30)
Achievement.create(name: "The Pacifist", description: "To complete this achievement, you must get kicked out of a restaurant for disorderly conduct and then proceed to get in a street fight! Get your gloves up and most importantly, have fun!", points: 90)
Achievement.create(name: "Beauty maker", description: "To complete this achievement, you must graduate DBC", points: 10000)
Achievement.create(name: "S to the K to the I", description: "To complete this achievement, you must ski a mountain!", points: 25)
Achievement.create(name: "Snow Crawler", description: "To complete this achievement, you must go snowboarding!", points: 40)
Achievement.create(name: "Crazy Person", description: "To complete this achievement, you must go bungee-jumping.", points: 50)
Achievement.create(name: "Insane Being", description: "To complete this achievement, you must go skydiving", points: 80)
Achievement.create(name: "Taylor Swift", description: "To complete this achievement, you must have had 10 or more relationships!", points: 90)
Achievement.create(name: "Freebie Friday", description: "To complete this achievement, just click complete!", points: 5)
Achievement.create(name: "Rob the Builder", description: "To complete this achievement, you must create a rails app!", points: 70)
Achievement.create(name: "Hmmmm..........", description: "To complete this achievement, you must have Mark explain something to you without making him say 'um' a SINGLE time!", points: 100)
Achievement.create(name: "American fish", description: "To complete this achievement, you must have James offer you his bag of Swedish Fish", points: 100)
Achievement.create(name: "Worse than Detention", description: "To complete this achievement, you must get chewed out by Hunter and NOT cry!", points: 100)
Achievement.create(name: "Once in a Blue Moon", description: "To complete this achievement, you must make Max raise his voice at you, yikes!", points: 100)




#


UserAchievement.create(user: first_user, achievement: Achievement.find_by(name: "The Book Worm"), completed: true)


UserAchievement.create(user: first_user, achievement: Achievement.find_by(name: "Rordon Gamsey"), completed: false)
UserAchievement.create(user: first_user, achievement: Achievement.find_by(name: "Kitchen Code 420"), completed: false)
UserAchievement.create(user: first_user, achievement: Achievement.find_by(name: "The Pacifist"), completed: false)
UserAchievement.create(user: first_user, achievement: Achievement.find_by(name: "Schrute Greenfingers"), completed: false)
UserAchievement.create(user: first_user, achievement: Achievement.find_by(name: "Taylor Swift"), completed: false)
UserAchievement.create(user: first_user, achievement: Achievement.find_by(name: "RollerCoaster Rumpus"), completed: false)
UserAchievement.create(user: first_user, achievement: Achievement.find_by(name: "RollerCoaster Rumpus V2"), completed: false)
UserAchievement.create(user: first_user, achievement: Achievement.find_by(name: "Hmmmm.........."), completed: false)
UserAchievement.create(user: first_user, achievement: Achievement.find_by(name: "American fish"), completed: false)
UserAchievement.create(user: first_user, achievement: Achievement.find_by(name: "Worse than Detention"), completed: false)
UserAchievement.create(user: first_user, achievement: Achievement.find_by(name: "Once in a Blue Moon"), completed: false)




Comment.create(body: "Hey cool avatar, name?", sender: first_user, receiver: second_user, like_count: rand(1..10))

Comment.create(body: "Heyy, really diggin the trousers, do you have an instagram?", sender: first_user, receiver: second_user, like_count: rand(1..10))

Comment.create(body: "Hey I don't think the first two comments posted, just checkin in... Meet up later for the bookworm achievement?", sender: first_user, receiver: second_user, like_count: rand(1..10))

Comment.create(body: "Look out the window I brought flowers!", sender: first_user, receiver: second_user, like_count: rand(1..10))













