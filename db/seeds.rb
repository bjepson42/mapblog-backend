# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all
Location.delete_all
Post.delete_all
Picture.delete_all

user1 = User.create(username:"Beau", password:"pass", first:"Beau", last:"Jepson", blogname:Faker::GreekPhilosophers.quote, blogdescription: Faker::Lorem.sentence, email: Faker::Internet.email)
user2 = User.create(username:"Anuj", password:"pass", first:"Anuj", last:"Sharma", blogname:Faker::GreekPhilosophers.quote, blogdescription: Faker::Lorem.sentence, email: Faker::Internet.email)
user3 = User.create(username:"Joe", password:"pass", first:"Joe", last:"Spinelli", blogname:Faker::GreekPhilosophers.quote, blogdescription: Faker::Lorem.sentence, email: Faker::Internet.email)
user4 = User.create(username:"Rachel", password:"pass", first:"Rachel", last:"Novick", blogname:Faker::GreekPhilosophers.quote, blogdescription: Faker::Lorem.sentence, email: Faker::Internet.email)
user5 = User.create(username:"Mandy", password:"pass", first:"Mandy", last:"Pilaud", blogname:Faker::GreekPhilosophers.quote, blogdescription: Faker::Lorem.sentence, email: Faker::Internet.email)
user6 = User.create(username:"Shinik", password:"pass", first:"Shinik", last:"Cupo", blogname:Faker::GreekPhilosophers.quote, blogdescription: Faker::Lorem.sentence, email: Faker::Internet.email)
user7 = User.create(username:"Ben", password:"pass", first:"Ben", last:"Addis", blogname:Faker::GreekPhilosophers.quote, blogdescription: Faker::Lorem.sentence, email: Faker::Internet.email)
user8 = User.create(username:"Ash", password:"pass", first:"Ash", last:"Zaki", blogname:Faker::GreekPhilosophers.quote, blogdescription: Faker::Lorem.sentence, email: Faker::Internet.email)
user9 = User.create(username:"JC", password:"pass", first:"JC", last:"Chang", blogname:Faker::GreekPhilosophers.quote, blogdescription: Faker::Lorem.sentence, email: Faker::Internet.email)
user10 = User.create(username:"Vlad", password:"pass", first:"Vlad", last:"Deryuzhenko", blogname:Faker::GreekPhilosophers.quote, blogdescription: Faker::Lorem.sentence, email: Faker::Internet.email)
user11 = User.create(username:"Kiley", password:"pass", first:"Kiley", last:"Bobbitt", blogname:Faker::GreekPhilosophers.quote, blogdescription: Faker::Lorem.sentence, email: Faker::Internet.email)
user12 = User.create(username:"Robin", password:"pass", first:"Robin", last:"Kim", blogname:Faker::GreekPhilosophers.quote, blogdescription: Faker::Lorem.sentence, email: Faker::Internet.email)
user13 = User.create(username:"Jonnel", password:"pass", first:"Jonnel", last:"Benjamin", blogname:Faker::GreekPhilosophers.quote, blogdescription: Faker::Lorem.sentence, email: Faker::Internet.email)
user14 = User.create(username:"Will", password:"pass", first:"Will", last:"Ley", blogname:Faker::GreekPhilosophers.quote, blogdescription: Faker::Lorem.sentence, email: Faker::Internet.email)
user15 = User.create(username:"Bruno", password:"pass", first:"Bruno", last:"Gonzalez", blogname:Faker::GreekPhilosophers.quote, blogdescription: Faker::Lorem.sentence, email: Faker::Internet.email)
user16 = User.create(username:"Ann", password:"pass", first:"Ann", last:"NoIdea", blogname:Faker::GreekPhilosophers.quote, blogdescription: Faker::Lorem.sentence, email: Faker::Internet.email)
user17 = User.create(username:"Paul", password:"pass", first:"Paul", last:"Nicholsen", blogname:Faker::GreekPhilosophers.quote, blogdescription: Faker::Lorem.sentence, email: Faker::Internet.email)

100.times do
    Location.create(
        name: Faker::Address.city,
        latitude: Faker::Number.between(-90,90),
        longitude: Faker::Number.between(-180,180)
    )
end

100.times do
    Post.create(
        name: Faker::Address.city,
        body: Faker::Lorem.paragraph,
        user_id: Faker::Number.between(1,17),
        location_id: Faker::Number.between(1,100)
    )
end

100.times do
    Picture.create(
        name: Faker::Beer.style,
        description: Faker::Lorem.sentence(1),
        url: Faker::Fillmurray.image,
        post_id: Faker::Number.between(1,100)
    )
end

