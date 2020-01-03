# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

book_category = Category.create!(name: 'Books', description: 'A list of books')
phone_category = Category.create!(name: 'Phones', description: 'A list of phones')
jeans_category = Category.create!(name: 'Jeans', description: 'A list of jeans')
laptop_category = Category.create!(name: 'Laptop', description: 'A list of laptops')

Product.create!(category: book_category, name: Faker::Book.title, description: "#{Faker::Book.author} #{Faker::Book.publisher} #{Faker::Book.genre}", price: 100)
Product.create!(category: book_category, name: Faker::Book.title, description: "#{Faker::Book.author} #{Faker::Book.publisher} #{Faker::Book.genre}", price: 100)
Product.create!(category: book_category, name: Faker::Book.title, description: "#{Faker::Book.author} #{Faker::Book.publisher} #{Faker::Book.genre}", price: 100)
Product.create!(category: book_category, name: Faker::Book.title, description: "#{Faker::Book.author} #{Faker::Book.publisher} #{Faker::Book.genre}", price: 100)
Product.create!(category: book_category, name: Faker::Book.title, description: "#{Faker::Book.author} #{Faker::Book.publisher} #{Faker::Book.genre}", price: 100)
Product.create!(category: book_category, name: Faker::Book.title, description: "#{Faker::Book.author} #{Faker::Book.publisher} #{Faker::Book.genre}", price: 100)
Product.create!(category: book_category, name: Faker::Book.title, description: "#{Faker::Book.author} #{Faker::Book.publisher} #{Faker::Book.genre}", price: 100)

Product.create!(category: phone_category, name: 'Iphone 9', description: 'A new iphone', price: 10000)
Product.create!(category: phone_category, name: 'Iphone 10', description: 'A new iphone', price: 10000)
Product.create!(category: phone_category, name: 'Samsung galaxy s 10', description: 'A new samsung', price: 10000)
Product.create!(category: phone_category, name: 'Samsung galaxy 11', description: 'A new samsung', price: 10000)
Product.create!(category: phone_category, name: 'Samsung android', description: 'A new samsung', price: 10000)
Product.create!(category: phone_category, name: 'LG AndroidPhone', description: 'A new samsung', price: 10000)
Product.create!(category: phone_category, name: 'Micromax android', description: 'A new micromax', price: 10000)
Product.create!(category: phone_category, name: 'Micromax audrino', description: 'A new samsung', price: 10000)

Product.create!(category: jeans_category, name: 'Levis jeans', description: 'A new levis', price: 1000)
Product.create!(category: jeans_category, name: 'Levis pants', description: 'A new levis', price: 1000)
Product.create!(category: jeans_category, name: 'Raymond pants', description: 'A new Raymond', price: 1000)
Product.create!(category: jeans_category, name: 'Louis phillpe', description: 'A new louis', price: 1000)

Product.create!(category: laptop_category, name: 'Lenovo z1990', description: 'A new lenovo', price: 40000)
Product.create!(category: laptop_category, name: 'Sony z1990', description: 'A new sony', price: 40000)

Product.create!(category: laptop_category, name: 'Onida computer', description: 'A new onida', price: 40000)
Product.create!(category: laptop_category, name: 'Testonida computer', description: 'A new onida', price: 40000)

