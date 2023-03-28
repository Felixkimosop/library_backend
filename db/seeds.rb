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



# 10.times do
#   user = User.new(
#     name: Faker::Name.name,
#     email: Faker::Internet.email,
#     password: 'password',
#     password_confirmation: 'password'
#   )
#   user.save!
# end

10.times do
  Collection.create!(
    user_id: Faker::Number.between(from: 1, to: 5),
    book_id: Faker::Number.between(from: 1, to: 5)
  )
end


