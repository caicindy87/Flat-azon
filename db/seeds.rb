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

Item.create(name: "Computer Desk", price: 25, description: "Good desk, want to sell cause I bought a new one", quantity: 1, user_id: 1, category_id: 1, picture: "https://cdn.pixabay.com/photo/2014/05/02/21/50/home-office-336377_1280.jpg")
Item.create(name: "Drawers", price: 35, description: "New, family didn't need it anymore", quantity: 1, user_id: 1, category_id: 1, picture: "https://cdn.pixabay.com/photo/2017/08/05/11/39/people-2582825_1280.jpg")
Item.create(name: "Iphone 4g", price: 250, description: "Used, just upgraded to iphone 12s", quantity: 1, user_id: 1, category_id: 2, picture: "https://cdn.pixabay.com/photo/2014/08/05/10/30/iphone-410324_1280.jpg")
Item.create(name: "Gaming PC", price: 2500, description: "New gaming PC, was built for fun", quantity: 1, user_id: 1, category_id: 2, picture: "https://cdn.pixabay.com/photo/2017/10/15/09/33/desk-2852986_1280.jpg")
Item.create(name: "Nintendo Switch", price: 250, description: "Used, only wanted to play animal crossing", quantity: 1, user_id: 1, category_id: 2, picture: "https://cdn.pixabay.com/photo/2019/01/24/23/54/nintendo-switch-3953601_1280.jpg")
Item.create(name: "Jeffree Star Blood Lust", price: 250, description: "New, Jeffree star pallette that contains various colours", quantity: 1, user_id: 1, category_id: 5, picture: "https://beautywithhollie.com/wp-content/uploads/2020/02/Jeffree-Star-Blood-Lust-Palette-Review.jpg")
Item.create(name: "Dog Leash", price: 50, description: "Used, dog outgrew it", quantity: 1, user_id: 1, category_id: 4, picture: "https://images-na.ssl-images-amazon.com/images/I/717P9sue37L._AC_SX425_.jpg")
Item.create(name: "Doggie treats", price: 25, description: "Very tasty", quantity: 1, user_id: 1, category_id: 1, picture: "https://img.chewy.com/is/image/catalog/50345_MAIN._AC_SL1500_V1578496397_.jpg")
Item.create(name: "Porter Robinson Shelter Vinyl", price: 50, description: "Good song", quantity: 1, user_id: 1, category_id: 2, picture: "https://lh3.googleusercontent.com/proxy/fISuYewsIVw_1x7KZoEx6hkD0fZ7thl6ucPy5eiJpwxiKliz81nJUjIhZ1ZaSb_ObuDBvo7pa63gM-UuR3USM4qP7TBWe91sgyGDISaMWkduSwl3X3O-u1efSs2wiZYlj_jI9vATV36HKg_CJXsE8osWgRohWJnxUzwk7Kp4lN1Z8pnOSJ8e")
Item.create(name: "Pink Cardigan", price: 30, description: "It looked ugly on me", quantity: 1, user_id: 1, category_id: 3, picture: "https://m.media-amazon.com/images/I/71F2WZMUoIL._SR500,500_.jpg")
Item.create(name: "Blue Shorts", price: 5, description: "I got a big butt so it didn't fit.", quantity: 1, user_id: 1, category_id: 3, picture: "https://assets.adidas.com/images/w_600,f_auto,q_auto:sensitive,fl_lossy/bc7c342027c0485ab85ba81100e415ce_9366/Regista_18_Shorts_Blue_CF9600_02_laydown.jpg")