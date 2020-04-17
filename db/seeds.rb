# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.create(name: "Furniture")
Category.create(name: "Electronics")
Category.create(name: "Clothing")
Category.create(name: "Pet Supplies")
Category.create(name: "Beauty")

Item.create(name: "Computer Desk", price: 25, description: "Good desk, want to sell cause I bought a new one", quantity: 1, user_id: 1, category_id: 1)
Item.create(name: "Drawers", price: 35, description: "New, family didn't need it anymore", quantity: 1, user_id: 1, category_id: 1)
Item.create(name: "Iphone 4g", price: 250, description: "Used, just upgraded to iphone 12s", quantity: 1, user_id: 1, category_id: 2)
Item.create(name: "Gaming PC", price: 2500, description: "New gaming PC, was built for fun", quantity: 1, user_id: 1, category_id: 2)
Item.create(name: "Nintendo Switch", price: 250, description: "Used, only wanted to play animal crossing", quantity: 1, user_id: 1, category_id: 2)
Item.create(name: "Jeffree Star Blood Lust", price: 250, description: "New, Jeffree star pallette that contains various colours", quantity: 1, user_id: 1, category_id: 5)
Item.create(name: "Dog Leash", price: 50, description: "Used, dog outgrew it", quantity: 1, user_id: 1, category_id: 4)
Item.create(name: "Doggie treats", price: 25, description: "Very tasty", quantity: 1, user_id: 1, category_id: 1)
Item.create(name: "Porter Robinson Shelter Vinyl", price: 50, description: "Good song", quantity: 1, user_id: 1, category_id: 2)
Item.create(name: "Pink Cardigan", price: 30, description: "It looked ugly on me", quantity: 1, user_id: 1, category_id: 3)
Item.create(name: "Blue Shorts", price: 5, description: "I got a big butt so it didn't fit.", quantity: 1, user_id: 1, category_id: 3)