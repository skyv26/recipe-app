# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
first_user = User.create(name: 'Aakash', role: 'admin')
second_user = User.create(name: 'Kumar', role: 'guest')
third_user = User.create(name: 'Verma', role: 'user')

# first_user = User.create(name: 'Aakash', email: 'dev.aakashv@gmail.com', password: 'topsecret', password_confirmation: 'topsecret', role: 'admin')
# second_user = User.create(name: 'Kumar', email: 'skybrel0001@gmail.com', password: 'topsecret', password_confirmation: 'topsecret', role: 'admin')
# third_user = User.create(name: 'Verma', email: 'skybrel@gmail.com', password: 'topsecret', password_confirmation: 'topsecret', role: 'admin')
recipe_1 = Recipe.create(name: 'Sweet Potato Dum 1', preparation_time: 25.5, cooking_time: 20.05, description: 'It is very easy, delicious and powerful dish famous in Asia.', public: true, user: first_user)
recipe_2 = Recipe.create(name: 'Sweet Potato Dum 2', preparation_time: 25.5, cooking_time: 20.05, description: 'It is very easy, delicious and powerful dish famous in Asia.', public: false, user: first_user)
recipe_3 = Recipe.create(name: 'Potato Dum', preparation_time: 2.5, cooking_time: 2.05, description: 'It is very easy, delicious and powerful dish famous in Asia.', public: false, user: second_user)
recipe_4 = Recipe.create(name: 'Dum', preparation_time: 2.5, cooking_time: 2.05, description: 'It is very easy, delicious and powerful dish famous in Asia.', public: false, user: second_user)

intry_1 = Inventory.create(name: 'Sweet Dish List', user: first_user)
intry_2 = Inventory.create(name: 'Sour Dish List', user: third_user)
intry_3 = Inventory.create(name: 'Soups List', user: second_user)


food_1 = Food.create(name: 'apple', measurement_unit: 'kilograms', price: 2.15)
food_2 = Food.create(name: 'almonds', measurement_unit: 'grams', price: 10.25)
food_3 = Food.create(name: 'gold powder', measurement_unit: 'milligrams', price: 15.35)

intry_food_1 = InventoryFood.create(quantity: 7, inventory: intry_1, food: food_1)
intry_food_2 = InventoryFood.create(quantity: 8, inventory: intry_2, food: food_2)
intry_food_3 = InventoryFood.create(quantity: 9, inventory: intry_3, food: food_3)

recipe_food_1 = RecipeFood.create(quantity: 5, recipe: recipe_1, food: food_1)
recipe_food_2 = RecipeFood.create(quantity: 15, recipe: recipe_1, food: food_3)
recipe_food_3 = RecipeFood.create(quantity: 8, recipe: recipe_1, food: food_2)

recipe_food_4 = RecipeFood.create(quantity: 7, recipe: recipe_2, food: food_1)
recipe_food_5 = RecipeFood.create(quantity: 11, recipe: recipe_3, food: food_2)
recipe_food_6 = RecipeFood.create(quantity: 2, recipe: recipe_4, food: food_3)
