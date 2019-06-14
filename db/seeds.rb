# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
User.create(
  name: 'Miguel Torres',
  email: 'migueltg93@gmail.com',
  password: 'password',
  password_confirmation: 'password',
  admin: true,
)

10.times do 
  User.create(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: 'password',
    password_confirmation: 'password',
  )
end

10.times do 
  Dinner.create(
    title: Faker::Food.dish,
    description: Faker::Food.description,
    owner: User.find(rand(1..5)),
    guest_capacity: rand(1..10),
    cost_per_guest: rand(50..300)
  )
end

30.times do 
  Guest.create(
    user: User.find(rand(1..10)),
    dinner: Dinner.find(rand(1..10))
  )
end
