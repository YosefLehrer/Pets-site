# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


5.times do
    Owner.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, age: rand(18..90), email: Faker::Internet.email)
   end
   
   # Make some pets
   15.times do
    Pet.create!(name: [Faker::Creature::Dog.name, Faker::Creature::Cat.name, Faker::Creature::Horse.name].sample, species: ["Cat", "Dog", "Bird"].sample, owner_id: rand(1..5))
   end





# Owner.create!(first_name: "Ben", last_name: "Braunstien", age: 23, email: "ben@gmail.com", )
# Owner.create!(first_name: "Philip", last_name: "Smalls", age: 26, email: "", )
# Owner.create!(first_name: "", last_name: "", age: , email: "", )
# Pet.create!(name: "", species: "", owner_id: )
# Pet.create!(name: "", species: "", owner_id: )
# Pet.create!(name: "", species: "", owner_id: )