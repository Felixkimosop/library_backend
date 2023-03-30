# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

# 10.times do
#   admin = Admin.new(
#     name: Faker::Name.name,
#     email: Faker::Internet.email,
#     password: 'password',
#     password_confirmation: 'password'
#   )
#   admin.save!
# end

# 10.times do
#   Book.create!(
#     title: Faker::Book.title,
#     image_url: Faker::Internet.url,
#     description: Faker::Lorem.paragraph,
#     admin_id: Faker::Number.between(from: 1, to: 5)
#   )
# end
# Book.create(title:"The Great Gatsby",image_url:"https://images.gr-assets.com/books/1490528560l/4671.jpg",
#   description:"Set in the Jazz Age, this classic novel tells the story of Jay Gatsby's quest to win back his lost love, Daisy Buchanan, and his tragic downfall.",
#   admin_id:33
# )
# Book.create(title:"To Kill a Mockingbird",image_url:"https://images.gr-assets.com/books/1361975680l/2657.jpg",
#   description:"Set in the Jazz Age, this classic novel tells the story of Jay Gatsby's quest to win back his lost love, Daisy Buchanan, and his tragic downfall.",
#   admin_id:34
# )
# Book.create(title:"The Catcher in the Rye",image_url:"https://images.gr-assets.com/books/1398034300l/5107.jpg",
#   description:"This novel follows Holden Caulfield, a teenage boy expelled from his prep school, as he wanders around New York City, grappling with alienation, identity, and loss.",
#   admin_id:35
# )

# User.create(name:"Lucy", email:"lulumuhoro@gmail.com", password: 'password',
#   password_confirmation: 'password')
# User.create(name:"Felix", email:"felix@gmail.com", password: 'password',
#   password_confirmation: 'password')
# User.create(name:"John", email:"john@gmail.com", password: 'password',
#   password_confirmation: 'password')
# User.create(name:"Osteen", email:"osteen@gmail.com", password: 'password',
#   password_confirmation: 'password')

# Admin.create(name:"Lucy", email:"lulumuhoro@gmail.com",password: 'password',
#   password_confirmation: 'password')
# Admin.create(name:"Felix", email:"felix@gmail.com", password: 'password',
#   password_confirmation: 'password')
# Admin.create(name:"John", email:"john@gmail.com", password: 'password',
#   password_confirmation: 'password')
# Admin.create(name:"Osteen", email:"osteen@gmail.com",  password: 'password',
#     password_confirmation: 'password' )

Collection.create(user_id:24, book_id:14)
Collection.create(user_id:25, book_id:14)
Collection.create(user_id:25, book_id:16)

# 10.times do
#   user = User.new(
#     name: Faker::Name.name,
#     email: Faker::Internet.email,
#    
#   )
#   user.save!
# end

# 10.times do
#   Collection.create!(
#     user_id: Faker::Number.between(from: 1, to: 5),
#     book_id: Faker::Number.between(from: 1, to: 5)
#   )
# end


