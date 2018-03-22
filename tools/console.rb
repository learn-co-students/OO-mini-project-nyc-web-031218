require_relative '../config/environment.rb'
# TESTING CODE

pasta = Recipe.new("Pasta")
pizza = Recipe.new("Pizza")
meatloaf = Recipe.new("Meatloaf")

tom = User.new("Tom")
dick = User.new("Dick")
harry = User.new("Harry")

harry.add_recipe_card(pasta, 12, 3)
tom.add_recipe_card(meatloaf, 17, 4)
dick.add_recipe_card(pasta, 12, 2)
tom.add_recipe_card(pizza, 7, 1)
harry.add_recipe_card(pasta, 10, 5)

binding.pry
