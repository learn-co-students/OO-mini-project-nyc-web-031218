require_relative '../config/environment.rb'
# TESTING CODE

puts "## GENERAL PUPROSE METHODS".colorize(:magenta)

puts "  # Initializations".colorize(:yellow)
pasta = Recipe.new("Pasta")
pizza = Recipe.new("Pizza")
meatloaf = Recipe.new("Meatloaf")
chicken = Recipe.new("Chicken")
puts "    created new recipes: Pasta, Pizza, Meatload, Chicken".colorize(:green)

tom = User.new("Tom")
dick = User.new("Dick")
harry = User.new("Harry")
puts "    created new users: Tom, Dick, Harry".colorize(:green)

card1 = harry.add_recipe_card(pasta, 12, 3)
card2 = tom.add_recipe_card(meatloaf, 17, 4)
card3 = dick.add_recipe_card(pasta, 12, 2)
card4 = tom.add_recipe_card(pizza, 7, 1)
card5 = harry.add_recipe_card(meatloaf, 10, 5)
card6 = harry.add_recipe_card(pizza, 12, 3)
card7 = tom.add_recipe_card(chicken, 12, 3)
card8 = harry.add_recipe_card(chicken, 12, 2)
card9 = dick.add_recipe_card(pasta, 12, 5)
puts "    User#add_recipe_card: added card(1..9)".colorize(:green)

puts "  # CLASS.all (x6)".colorize(:yellow)

if User.all == [tom, dick, harry]
  puts "   User.all returns array of all users".colorize(:green)
else
  puts "   FAILED TEST".colorize(:red)
end

if Recipe.all == [pasta, pizza, meatloaf, chicken]
  puts "   Recipe.all returns array of all recipes".colorize(:green)
else
  puts "   FAILED TEST".colorize(:red)
end

if RecipeCard.all == [card1, card2, card3, card4, card5, card6, card7, card8, card9]
  puts "   RecipeCard.all returns array of all recipe cards".colorize(:green)
else
  puts "    FAILED TEST".colorize(:red)
end

# if Ing:redient.all ==
# puts "Ing:redient.all returns array of all ing:redients".colorize(:green)
#
# if RecipeIng:redient.all ==
# puts "RecipeIng:redient.all returns array of all recipeing:redients".colorize(:green)
#
# if Allergen.all ==
# puts "Allergen.all returns array of all allergens".colorize(:green)

puts "## RECIPE <-> RECIPE_CARD <-> USER".colorize(:magenta)


puts "  User Test".colorize(:yellow)

if harry.top_three_recipes == [meatloaf, pasta, pizza]
  puts "    user #top_three_recipes returns array of user's top three recipies".colorize(:green)
else
  puts "    FAILED TEST".colorize(:red)
end

# if harry.most_recent_recipe ==
#   puts "user #most_recent_recipe returns user's most recently added recipe"
# else
#   puts "FAILED TEST".colorize(:red)
# end

puts "  Recipe Tests".colorize(:yellow)
#
if Recipe.most_popular == pasta
  puts "    Recipe.most_popular returns most popular recipe".colorize(:green)
else
  puts "    FAILED TEST".colorize(:red)
end

if pizza.users == [tom, harry]
  puts "    recipe .users returns recipe's users".colorize(:green)
else
  puts "    FAILED TEST".colorize(:red)
end

puts "  RecipeCard Tests".colorize(:yellow)

if card1.user == harry
  puts "    recipecard .user returns recipecard's user".colorize(:green)
else
  puts "    FAILED TEST".colorize(:red)
end

if card1.recipe == pasta
  puts "    recipecard .recipe returns recipecard's recipe".colorize(:green)
else
  puts "    FAILED TEST".colorize(:red)
end

if card1.date == 12
  puts "    recipecard .date returns recipecard's date".colorize(:green)
else
  puts "    FAILED TEST".colorize(:red)
end

if card1.rating == 3
  puts "    recipecard .rating returns recipecard's rating".colorize(:green)
else
  puts "    FAILED TEST".colorize(:red)
end

#card1 = harry.add_recipe_card(pasta, 12, 3)

# puts "# CLASS.all (x6)".colorize(:yellow)
#
# puts "# CLASS.all (x6)".colorize(:yellow)

binding.pry
