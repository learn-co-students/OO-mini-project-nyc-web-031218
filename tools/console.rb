require_relative '../config/environment.rb'


mark = User.new("Mark")
harim = User.new("Harim")
rani = User.new("Rani")

pizza  = Recipe.new("Pizza")
pasta  = Recipe.new("Pasta")
salad = Recipe.new("Salad")
burger = Recipe.new("Burger")


harim.add_recipe_card(pasta, 4, "June")
harim.add_recipe_card(pizza, 2, "July")
harim.add_recipe_card(salad, 8, "May")
harim.add_recipe_card(burger, 7, "April")
rani.add_recipe_card(pasta, 5, "June")
rani.add_recipe_card(pizza, 2, "Dec")
mark.add_recipe_card(burger, 5, "June")
mark.add_recipe_card(salad, 7, "Nov")

harim.recipes
harim.top_three_recipes
harim.most_recent_recipe

binding.pry
