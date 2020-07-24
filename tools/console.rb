require_relative '../config/environment.rb'

joe = User.new("Joe")
eric = User.new("Eric")
dick = User.new("Dick")

peanuts = Ingredient.new("Peanut")
chicken = Ingredient.new("Chicken")
sauce = Ingredient.new("Sauce")
rice = Ingredient.new("Rice")
cheese = Ingredient.new("Cheese")
meat = Ingredient.new("Meat")
onions = Ingredient.new("Onions")

joe.declare_allergen(peanuts)
eric.declare_allergen(peanuts)
dick.declare_allergen(rice)
joe.declare_allergen(sauce)
eric.declare_allergen(sauce)
dick.declare_allergen(sauce)



peanutbutter = Recipe.new("Peanut Butter")
peanutbutter.add_ingredients([peanuts, sauce])

philly = Recipe.new("Philly Cheese Steak")
philly.add_ingredients([meat, onions, cheese])

burger = Recipe.new("Burger")
burger.add_ingredients([meat, chicken, sauce, cheese])

chickendish = Recipe.new("Chicken Dish")
chickendish.add_ingredients([chicken, sauce, rice])

joe.add_recipe_card(chickendish, "3/22", 5)
joe.add_recipe_card(peanutbutter, "3/21", 7)
joe.add_recipe_card(philly, "3/20", 10)
joe.add_recipe_card(burger, "2/3", 4)

eric.add_recipe_card(chickendish, "3/22", 8)
eric.add_recipe_card(philly, "3/20", 4)

dick.add_recipe_card(chickendish, "3/20", 9)
dick.add_recipe_card(peanutbutter, "3/22", 5)


binding.pry

a
