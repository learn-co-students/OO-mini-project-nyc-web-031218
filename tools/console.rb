require_relative '../config/environment.rb'
# TESTING CODE

puts "## RECIPE <-> RECIPE_CARD <-> USER"

puts "# Initializations"
pasta = Recipe.new("Pasta")
pizza = Recipe.new("Pizza")
meatloaf = Recipe.new("Meatloaf")
chicken = Recipe.new("Chicken")
puts "created new recipes"

tom = User.new("Tom")
dick = User.new("Dick")
harry = User.new("Harry")
puts "created new users"

card1 = harry.add_recipe_card(pasta, 12, 3)
card2 = tom.add_recipe_card(meatloaf, 17, 4)
card3 = dick.add_recipe_card(pasta, 12, 2)
card4 = tom.add_recipe_card(pizza, 7, 1)
card5 = harry.add_recipe_card(meatloaf, 10, 5)
card6 = harry.add_recipe_card(pizza, 12, 3)
card7 = tom.add_recipe_card(chicken, 12, 3)
card8 = harry.add_recipe_card(chicken, 12, 2)
puts "created new recipes"


binding.pry
