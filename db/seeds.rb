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
Book.create(title:"The Great Gatsby",image_url:"https://images.gr-assets.com/books/1490528560l/4671.jpg",
  description:"Set in the Jazz Age, this classic novel tells the story of Jay Gatsby's quest to win back his lost love, Daisy Buchanan, and his tragic downfall.",
  admin_id:19
)
Book.create(title:"To Kill a Mockingbird",image_url:"https://images.gr-assets.com/books/1361975680l/2657.jpg",
  description:"Set in the Jazz Age, this classic novel tells the story of Jay Gatsby's quest to win back his lost love, Daisy Buchanan, and his tragic downfall.",
  admin_id:20
)
Book.create(title:"The Catcher in the Rye",image_url:"https://images.gr-assets.com/books/1398034300l/5107.jpg",
  description:"This novel follows Holden Caulfield, a teenage boy expelled from his prep school, as he wanders around New York City, grappling with alienation, identity, and loss.",
  admin_id:21
)
Book.create(title: "1984", image_url: "https://images.gr-assets.com/books/1532714506l/40961427.jpg",
    description: "George Orwell's dystopian novel depicts a future society under the complete control of a totalitarian government, where individual freedom and thought are suppressed.",
    admin_id: 22)
    
 Book.create(title: "The Hobbit", image_url: "https://images.gr-assets.com/books/1372847500l/5907.jpg",
    description: "This beloved fantasy novel tells the story of Bilbo Baggins, a hobbit who goes on a perilous journey with a group of dwarves and a wizard to reclaim treasure from a dragon.",
    admin_id: 23)
    
Book.create(title: "Pride and Prejudice", image_url: "https://images.gr-assets.com/books/1320399351l/1885.jpg",
    description: "Jane Austen's classic novel follows the tumultuous romance between Elizabeth Bennet and Mr. Darcy, and the social conventions and expectations of the time that shape their interactions.",
    admin_id: 24)
    
 Book.create(title: "The Lord of the Rings", image_url: "https://images.gr-assets.com/books/1346072396l/33.jpg",
    description: "J.R.R. Tolkien's epic fantasy trilogy tells the story of Frodo Baggins and his companions as they embark on a quest to destroy the One Ring and defeat the dark lord Sauron.",
    admin_id: 25)

Book.create(title: "To the Lighthouse", image_url: "https://images.gr-assets.com/books/1454671443l/7068.jpg",
    description: "Virginia Woolf's modernist novel explores the lives and relationships of a family and their guests as they spend the summer at their seaside home, with a focus on the inner thoughts and experiences of the characters.",
    admin_id: 26)

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

# Collection.create(user_id:19, book_id:11)
# Collection.create(user_id:20, book_id:12)
# Collection.create(user_id:21, book_id:13)

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


