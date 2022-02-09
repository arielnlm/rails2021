# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(name:  "admin",
            lastname: "admin",
             username: "admin",
             admin: "true",
             password:              "adminadmin",
             password_confirmation: "adminadmin")
99.times do |n|
  name  = Faker::Name.name
  lastname = Faker::Name.last_name
  username = Faker::Internet.username
  password = "password"
  admin ="false"
  User.create!(name:  name,
               lastname: lastname,
               username: username,
               admin: admin,
               password:              password,
               password_confirmation: password)
end