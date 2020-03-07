# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Menu.destroy_all
Category.destroy_all
Item.destroy_all

Menu.create(name: "Breakfast") # id: 1
Menu.create(name: "Lunch") # id: 2
Menu.create(name: "Dinner") # id: 3

Category.create(name: "Drinks") # id: 1
Category.create(name: "Bakery") # id: 2
Category.create(name: "Appetizers") # id: 3
Category.create(name: "Entrees") # id: 4
Category.create(name: "Extras") # id: 5
Category.create(name: "Desserts") # id: 6

# Drinks
Item.create(name: "Hot Coffee(8oz)", price: 1.25, menu_id: 1, category_id: 1)
Item.create(name: "Hot Coffee(12oz)", price: 1.50, menu_id: 1, category_id: 1)
Item.create(name: "Iced Coffee(16oz)", price: 2.00, menu_id: 1, category_id: 1)
Item.create(name: "Iced Coffee(20oz)", price: 2.50, menu_id: 1, category_id: 1)
Item.create(name: "Cold Brew(16oz)", price: 2.25, menu_id: 1, category_id: 1)
Item.create(name: "Cold Brew(20oz)", price: 2.50, menu_id: 2, category_id: 1)
Item.create(name: "Hot Black Tea(8oz)", price: 1.25, menu_id: 1, category_id: 1)
Item.create(name: "Hot Black Tea(12oz)", price: 1.50, menu_id: 1, category_id: 1)
Item.create(name: "Iced Unsweetened Black Tea(16oz)", price: 2.00, menu_id: 2, category_id: 1)
Item.create(name: "Iced Unsweetened Black Tea(20oz)", price: 2.25, menu_id: 3, category_id: 1)
Item.create(name: "Iced Sweetened Black Tea(16oz)", price: 2.00, menu_id: 2, category_id: 1)
Item.create(name: "Iced Sweetened Black Tea(20oz)", price: 2.25, menu_id: 3, category_id: 1)
Item.create(name: "Soda(20oz)", price: 2.00, menu_id: 3, category_id: 1)

# Bakery
Item.create(name: "Butter Croissant", price: 2.00, menu_id: 1, category_id: 2)
Item.create(name: "Chocolate Croissant", price: 2.25, menu_id: 1, category_id: 2)
Item.create(name: "Strawberry Croissant", price: 2.25, menu_id: 1, category_id: 2)
Item.create(name: "Blueberry Muffin", price: 2.25, menu_id: 1, category_id: 2)
Item.create(name: "Lemon Poppy Seed Muffin", price: 2.25, menu_id: 1, category_id: 2)
Item.create(name: "Chocolate Chip Muffin", price: 2.25, menu_id: 1, category_id: 2)
Item.create(name: "Blueberry Scone", price: 2.25, menu_id: 1, category_id: 2)
Item.create(name: "Cranberry Orange Scone", price: 2.25, menu_id: 1, category_id: 2)
Item.create(name: "Vanilla Bean Scone", price: 2.25, menu_id: 1, category_id: 2)
Item.create(name: "Plain Bagel", price: 1.00, menu_id: 1, category_id: 2)
Item.create(name: "Everything Bagel", price: 1.25, menu_id: 1, category_id: 2)

# Appetizers
Item.create(name: "Chips and Salsa", price: 2.25, menu_id: 2, category_id: 3)
Item.create(name: "Artichoke Dip", price: 4.75, menu_id: 2, category_id: 3)
Item.create(name: "Guacamole", price: 3.50, menu_id: 2, category_id: 3)
Item.create(name: "BBQ Nachos", price: 6.75, menu_id: 3, category_id: 3)
Item.create(name: "Loaded Fries", price: 6.75, menu_id: 3, category_id: 3)
Item.create(name: "Chicken Wings", price: 7.25, menu_id: 3, category_id: 3)

# Entrees
Item.create(name: "Ham and Swiss Sandwich", price: 7.50, menu_id: 2, category_id: 4)
Item.create(name: "Roast Beef Sandwich", price: 7.50, menu_id: 2, category_id: 4)
Item.create(name: "Pork Banh Mi Sandwich", price: 7.50, menu_id: 2, category_id: 4)
Item.create(name: "Turkey Sandwich", price: 7.50, menu_id: 2, category_id: 4)
Item.create(name: "Classic Burger", price: 8.00, menu_id: 3, category_id: 4)
Item.create(name: "Guacamole Burger", price: 8.25, menu_id: 3, category_id: 4)
Item.create(name: "Barnyard Burger", price: 8.50, menu_id: 3, category_id: 4)
Item.create(name: "Mushroom Swiss Burger", price: 8.50, menu_id: 3, category_id: 4)

# Extras
Item.create(name: "Cream Cheese", price: 0.75, menu_id: 1, category_id: 2)
Item.create(name: "Hummus", price: 0.75, menu_id: 1, category_id: 2)
Item.create(name: "Peanut Butter", price: 0.75, menu_id: 1, category_id: 2)
Item.create(name: "Chips", price: 2.50, menu_id: 2, category_id: 5)
Item.create(name: "Fries", price: 2.50, menu_id: 2, category_id: 5)
Item.create(name: "Onion Rings", price: 2.50, menu_id: 2, category_id: 5)
Item.create(name: "Steamed Broccoli", price: 2.50, menu_id: 3, category_id: 5)
Item.create(name: "Cauliflower Casserole", price: 3.50, menu_id: 3, category_id: 5)
Item.create(name: "Roasted Brussels Sprouts", price: 3.50, menu_id: 3, category_id: 5)
Item.create(name: "Baked Macaroni and Cheese", price: 3.50, menu_id: 3, category_id: 5)

# Desserts
Item.create(name: "Apple Pie", price: 3.75, menu_id: 3, category_id: 6)
Item.create(name: "Brownie Surprise", price: 3.75, menu_id: 3, category_id: 6)
Item.create(name: "Cookie Sundae", price: 3.75, menu_id: 3, category_id: 6)
Item.create(name: "Banana Cream Pie", price: 3.75, menu_id: 3, category_id:6)
Item.create(name: "New York Style Cheesecake", price: 3.75, menu_id: 3, category_id: 6)