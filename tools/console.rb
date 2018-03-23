require_relative '../config/environment.rb'

puts "creates new users"
frank = User.new("Frank")
mike = User.new("Mike")
puts frank.name
puts mike.name

puts "\n"
puts "\n"

puts "creates some ingredients"
peanuts = Ingredient.new("Peanuts")
lettuce = Ingredient.new("Lettuce")
tomato = Ingredient.new("Tomato")
crutons = Ingredient.new("crutons")
puts peanuts
puts peanuts.name
milk = Ingredient.new("Milk")
puts milk
puts milk.name

puts "\n"
puts "\n"

puts "creates new recipes"
soup = Recipe.new("soup")
meat_sandwich = Recipe.new("meat sandwich")
ice_cream = Recipe.new("ice cream")
salad = Recipe.new("salad")
pie = Recipe.new("pie")

puts "\n"
puts "\n"

puts "creates new RecipeIngredient"
salad_ri = salad.add_ingredients([lettuce, tomato, crutons])
puts salad_ri.inspect

puts "\n"
puts "\n"

puts "creates some allergens"
dairy = Allergen.new(frank, milk)
puts soy = frank.declare_allergen(Ingredient.new("Soy"))
gluten = Allergen.new(mike, crutons)
puts gluten
puts "give array of all allergens"
puts frank.allergens.inspect
puts "should print the object(s) for dairy"
puts dairy
puts "should give us milk"
puts dairy.ingredient.name

puts "\n"
puts "\n"

puts "we can get all the recipes for a user"
frank_soup = frank.add_recipe_card(soup)
frank_meat_sandwich = frank.add_recipe_card(meat_sandwich)
puts frank.recipes
puts mike.recipes

puts "\n"
puts "\n"

puts "get most recent recipe"
frank_ice_cream = frank.add_recipe_card(ice_cream, 100, 999999999999999)
puts frank.most_recent_recipe.inspect
puts true if frank.most_recent_recipe == frank_ice_cream
# rc1 = RecipeCard.new(u1, r1)
# rc2 = u.add_recipe_card(r2)

puts "\n"
puts "\n"

puts "setting top three recipes for mike"
mike_pie = mike.add_recipe_card(pie, 1)
mike_soup = mike.add_recipe_card(soup, 2)
mike_meat_sandwich = mike.add_recipe_card(meat_sandwich, 3)
mike_ice_cream = mike.add_recipe_card(ice_cream, 4)
mike_soup = mike.add_recipe_card(soup, 5)
puts "this is Mike's top rated 3 recipes"
puts mike.top_three_recipes.inspect

puts "\n"
puts "\n"

puts "pull all the users from recipe"
puts meat_sandwich.users.inspect
puts pie.users.inspect
puts true if pie.users.first == mike

binding.pry
