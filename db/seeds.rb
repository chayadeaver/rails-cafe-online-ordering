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
Item.create(
    name: "Hot Coffee(8oz)", price: 1.25, menu_id: 1, category_id: 1, 
    description: "Hot coffee brewed via French press method served in an 8 oz mug."
)
Item.create(
    name: "Hot Coffee(12oz)", price: 1.50, menu_id: 1, category_id: 1, 
    description: "Hot coffee brewed via French press method served in a 12oz mug."
)
Item.create(
    name: "Iced Coffee(16oz)", price: 2.00, menu_id: 1, category_id: 1, 
    description: "Coffee brewed double-strength via French press method served in 16oz glass over ice."
)
Item.create(
    name: "Iced Coffee(20oz)", price: 2.50, menu_id: 1, category_id: 1, 
    description: "Coffee brewed double-strength via French press method served in 20oz glass over ice."
)
Item.create(
    name: "Cold Brew(16oz)", price: 2.25, menu_id: 1, category_id: 1, 
    description: "Coffee steeped over 20 hours served in 16oz glass over ice."
)
Item.create(
    name: "Cold Brew(20oz)", price: 2.50, menu_id: 2, category_id: 1, 
    description: "Coffee steeped over 20 hours served in 20oz glass over ice."
)
Item.create(
    name: "Hot Black Tea(8oz)", price: 1.25, menu_id: 1, category_id: 1, 
    description: "Hot English Breakfast tea served in 8oz mug."
)
Item.create(
    name: "Hot Black Tea(12oz)", price: 1.50, menu_id: 1, category_id: 1, 
    description: "Hot English Breakfast tea served in 12oz mug."
)
Item.create(
    name: "Iced Unsweetened Black Tea(16oz)", price: 2.00, menu_id: 2, category_id: 1, 
    description: "Black tea brewed double strength served over ice in 16oz glass."
)
Item.create(
    name: "Iced Unsweetened Black Tea(20oz)", price: 2.25, menu_id: 3, category_id: 1, 
    description: "Black tea brewed double strength served over ice in 20oz glass."
)
Item.create(
    name: "Iced Sweetened Black Tea(16oz)", price: 2.00, menu_id: 2, category_id: 1, 
    description: "Black tea brewed double strength sweetened and served over ice in 16oz glass."
)
Item.create(
    name: "Iced Sweetened Black Tea(20oz)", price: 2.25, menu_id: 3, category_id: 1, 
    description: "Black tea brewed double strength sweetened and served over ice in 20oz glass."
)
Item.create(
    name: "Fountain Drinks (20oz)", price: 2.00, menu_id: 3, category_id: 1, 
    description: "Coke, Diet Coke, Sprite, Barq's Root Beer, and Lemonade"
)

# Bakery
Item.create(
    name: "Butter Croissant", price: 2.00, menu_id: 1, category_id: 2, 
    description: "Flaky, layered French pastry."
)
Item.create(
    name: "Chocolate Croissant", price: 2.25, menu_id: 1, category_id: 2, 
    description: "Flaky, layered French pastry stuff with semi-sweet chocolate."
)
Item.create(
    name: "Strawberry Croissant", price: 2.25, menu_id: 1, category_id: 2, 
    description: "Flaky, layered French pastry filled with strawberry jam and whipped cream."
)
Item.create(
    name: "Blueberry Muffin", price: 2.25, menu_id: 1, category_id: 2, 
    description: "Blueberry muffin with streusel topping and served warm."
)
Item.create(
    name: "Lemon Poppy Seed Muffin", price: 2.25, menu_id: 1, category_id: 2, 
    description: "Lemon poppy seed muffin topped with vanilla drizzle"
)
Item.create(
    name: "Chocolate Chip Muffin", price: 2.25, menu_id: 1, category_id: 2, 
    description: "Muffin filled with semi-sweet chocolate chunks"
)
Item.create(
    name: "Blueberry Scone", price: 2.25, menu_id: 1, category_id: 2, 
    description: "Buttery, crumbly blueberry scone"
)
Item.create(
    name: "Cranberry Orange Scone", price: 2.25, menu_id: 1, category_id: 2, 
    description: "Buttery, crumbly scone filled with cranberries and infused with orange zest."
)
Item.create(
    name: "Vanilla Bean Scone", price: 2.25, menu_id: 1, category_id: 2, 
    description: "Vanilla bean scone with a light vanilla glaze."
)
Item.create(
    name: "Plain Bagel", price: 1.00, menu_id: 1, category_id: 2, 
    description: "Plain flavored bagel. Can be toasted and topped with cream cheese, hummus or peanut butter."
)
Item.create(
    name: "Everything Bagel", price: 1.25, menu_id: 1, category_id: 2, 
    description: "Bagel topped with a mixture of sesame seeds, garlic, onion, salt, and poppy seeds. Can be toasted and topped with cream cheese, hummus, or peanut butter."
)

# Appetizers
Item.create(
    name: "Chips and Salsa", price: 2.25, menu_id: 2, category_id: 3,
    description: "Homemade corn tortilla chips served with fresh tomato salsa."
)
Item.create(
    name: "Spinach Artichoke Dip", price: 4.75, menu_id: 2, category_id: 3, 
    description: "Creamy spinach artichoke topped with crunchy onion pieces and served with pita bread."
)
Item.create(
    name: "Guacamole", price: 3.50, menu_id: 2, category_id: 3, 
    description: "Homemade guacamole served with homemade corn tortilla chips."
)
Item.create(
    name: "BBQ Nachos", price: 6.75, menu_id: 3, category_id: 3, 
    description: "Homemade corn tortillas layered with monterrey jack cheese, black beans, pulled pork and topped with more pulled pork and jalepeno peppers."
)
Item.create(name: "Loaded Fries", price: 6.75, menu_id: 3, category_id: 3,
    description: "Hand-cut fries topped with cheddar cheese, bacon pieces, and sliced jalepenos."
)
Item.create(name: "Chicken Wings", price: 7.25, menu_id: 3, category_id: 3,
    description: "Eight chicken wings baked then fried and tossed in secret spices and housemade hot sauce. Served with carrots and celery."
)

# Entrees
Item.create(name: "Ham and Swiss Sandwich", price: 7.50, menu_id: 2, category_id: 4,
    description: "Ham and swiss topped with lettuce, tomato, red onions, and mayo."
)
Item.create(name: "Roast Beef Sandwich", price: 7.50, menu_id: 2, category_id: 4,
    description: "Roast beef sadnwich topped with horseradish cream sauce and caramelized onions."
)
Item.create(name: "Pork Banh Mi Sandwich", price: 7.50, menu_id: 2, category_id: 4,
    description: "Sliced pork tenderloin marinated overnight topped with pickled carrots, English cucumber, cilantro, sliced jalepenos and seasoned mayo."
)
Item.create(name: "Turkey Sandwich", price: 7.50, menu_id: 2, category_id: 4,
    description: "Shaved turkey sandwich topped with zuchinni hummus, alfalfa sprouts and English cucumber."
)
Item.create(name: "Classic Burger", price: 8.00, menu_id: 3, category_id: 4,
    description: "A quarter-pound sirloin patty grilled and served with lettuce, tomato and red onions."
)
Item.create(name: "Guacamole Burger", price: 8.25, menu_id: 3, category_id: 4,
    description: "A quarter-pound sirloin patty grilled and topped with fresh guacamole, crispy, monterrey jack cheese and sliced jalepenos."
)
Item.create(name: "Barnyard Burger", price: 8.50, menu_id: 3, category_id: 4,
    description: "A quarter-pound sirloin patty grilled and topped with mayo, lettuce, tomato, red onion, and a fried egg."
)
Item.create(name: "Mushroom Swiss Burger", price: 8.50, menu_id: 3, category_id: 4,
    description: "A quarter-pound sirloin patty grilled and topped with sauteed mushrooms and melted swiss cheese."
)

# Extras
Item.create(name: "Cream Cheese", price: 0.75, menu_id: 1, category_id: 2,
    description: "Cream cheese in 4oz serving."
)
Item.create(name: "Zucchini Hummus", price: 0.75, menu_id: 1, category_id: 2,
    description: "Housemade hummus made with grilled zuchinni instead of chickpeas."
)
Item.create(name: "Peanut Butter", price: 0.75, menu_id: 1, category_id: 2,
    description: "Peanut butter in 4oz serving."
)
Item.create(name: "Chips", price: 2.50, menu_id: 2, category_id: 5,
    description: "Housemade potato chips tossed in coarse salt."
)
Item.create(name: "Fries", price: 2.50, menu_id: 2, category_id: 5,
    description: "Hand-cut fries served with housemade ketchup."
)
Item.create(name: "Onion Rings", price: 2.50, menu_id: 2, category_id: 5,
    description: "Beer-battered onion rings served with horseradish dipping sauce."
)
Item.create(name: "Steamed Broccoli", price: 2.50, menu_id: 3, category_id: 5,
    description: "Steamed broccoli."
)
Item.create(name: "Cauliflower Casserole", price: 3.50, menu_id: 3, category_id: 5,
    description: "Cauliflower steamed, pureed, and loaded with butter, sour cream, bacon bits, cheddar cheese, and green onions."
)
Item.create(name: "Roasted Brussels Sprouts", price: 3.50, menu_id: 3, category_id: 5,
    description: "Simply-roasted brussels sprouts."
)
Item.create(name: "Baked Macaroni and Cheese", price: 3.50, menu_id: 3, category_id: 5,
    description: "Four cheese macaroni and cheese baked and roasted with a cripy cheese topping."
)

# Desserts
Item.create(name: "Apple Pie", price: 3.75, menu_id: 3, category_id: 6,
    description: "Apple pie with a caramelized, crumbly streusel topping."
)
Item.create(name: "Brownie Surprise", price: 3.75, menu_id: 3, category_id: 6,
    description: "Brownie filled with chocolate chunks baked in a cast-iron skillet and topped with vanilla ice cream and chocolate drizzile."
)
Item.create(name: "Cookie Sundae", price: 3.75, menu_id: 3, category_id: 6,
    description: "Chocolate chip cookie baked in cast-iron skillet topped with vanilla ice cream, whipped cream, chocolate drizzle and a cherry on top."
)
Item.create(name: "Banana Pudding", price: 3.75, menu_id: 3, category_id: 6,
    description: "Banana pudding made with vanilla wafers layered with whipped vanilla pudding."
)
Item.create(name: "New York Style Cheesecake", price: 3.75, menu_id: 3, category_id: 6,
    description: "New York style cheesecake served with strawberry compote."
)