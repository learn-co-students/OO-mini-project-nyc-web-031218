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

card1 = harry.add_recipe_card(pasta, Time.new(2002), 3)
card2 = tom.add_recipe_card(meatloaf, 4)
sleep(1)
card3 = dick.add_recipe_card(pasta, 2)
sleep(1)
card4 = tom.add_recipe_card(pizza, 1)
sleep(1)
card5 = harry.add_recipe_card(meatloaf, 5)
sleep(1)
card6 = harry.add_recipe_card(pizza, 3)
sleep(1)
card7 = tom.add_recipe_card(chicken, 3)
sleep(1)
card8 = harry.add_recipe_card(chicken, 2)
sleep(1)
card9 = dick.add_recipe_card(pasta, 5)
puts "    User#add_recipe_card: added card(1..9)".colorize(:green)

strawberry = Ingredient.new("strawberry")
nuts = Ingredient.new("nuts")
milk = Ingredient.new("milk")
wheat = Ingredient.new("wheat")
tomato_sauce = Ingredient.new("tomato_sauce")
puts "    created new ingredients: strawberry, nuts, milk, wheat, tomato_sauce".colorize(:green)


allergen1 = dick.declare_allergen(milk)
allergen2 = tom.declare_allergen(nuts)
allergen3 = dick.declare_allergen(wheat)
allergen4 = tom.declare_allergen(tomato_sauce)
allergen5 = dick.declare_allergen(strawberry)
allergen6 = tom.declare_allergen(milk)
allergen7 = harry.declare_allergen(milk)
puts "    User#declare_allergen: added allergen(1..7)".colorize(:green)

ri1 = pizza.add_ingredients([milk, wheat, tomato_sauce])
ri2 = pasta.add_ingredients([wheat, tomato_sauce])
ri3 = meatloaf.add_ingredients([tomato_sauce])
ri4 = chicken.add_ingredients([nuts])
puts "    Recipe#add_ingredients: added ri(1..4)".colorize(:green)


puts "  # CLASS.all (x6)".colorize(:yellow)

if User.all == [tom, dick, harry]
  puts "    User.all returns array of all users".colorize(:green)
else
  puts "    FAILED TEST".colorize(:red)
end

if Recipe.all == [pasta, pizza, meatloaf, chicken]
  puts "    Recipe.all returns array of all recipes".colorize(:green)
else
  puts "    FAILED TEST".colorize(:red)
end

if RecipeCard.all == [card1, card2, card3, card4, card5, card6, card7, card8, card9]
  puts "    RecipeCard.all returns array of all recipe cards".colorize(:green)
else
  puts "    FAILED TEST".colorize(:red)
end

if Ingredient.all == [strawberry, nuts, milk, wheat, tomato_sauce]
puts "    Ingredient.all returns array of all ingredients".colorize(:green)
else
  puts "    FAILED TEST".colorize(:red)
end


if Allergen.all == [allergen1, allergen2, allergen3, allergen4, allergen5, allergen6, allergen7]
puts "    Allergen.all returns array of all user allergens".colorize(:green)
else
  puts "    FAILED TEST".colorize(:red)
end


if RecipeIngredient.all == [ri1, ri2, ri3, ri4].flatten
puts "    RecipeIngredient.all returns array of all recipe ingredients".colorize(:green)
else
  puts "    FAILED TEST".colorize(:red)
end


puts "## RECIPE <-> RECIPE_CARD <-> USER".colorize(:magenta)


puts "  User Test".colorize(:yellow)

if harry.top_three_recipes == [meatloaf, pasta, pizza]
  puts "    user #top_three_recipes returns array of user's top three recipies".colorize(:green)
else
  puts "    FAILED TEST".colorize(:red)
end

if tom.most_recent_recipe == card7
  puts "    user #most_recent_recipe returns user's most recent recipies".colorize(:green)
else
  puts "    FAILED TEST".colorize(:red)
end

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

if card1.date == Time.new(2002)
  puts "    recipecard .date returns recipecard's date".colorize(:green)
else
  puts "    FAILED TEST".colorize(:red)
end

if card1.rating == 3
  puts "    recipecard .rating returns recipecard's rating".colorize(:green)
else
  puts "    FAILED TEST".colorize(:red)
end

puts "## RECIPE <-> RECIPE_INGREDIENT <-> INGREDIENT".colorize(:magenta)

puts "   # Recipe Test".colorize(:yellow)

if pizza.ingredients == [milk, wheat, tomato_sauce]
  puts "    recipe.ingredients returns recipe's ingredients".colorize(:green)
else
  puts "    FAILED TEST".colorize(:red)
end

puts "   # Recipe Ingredient Test".colorize(:yellow)
if ri1[0].ingredient == milk
  puts "    recipeingredients.ingredient returns ri ingredient".colorize(:green)
else
  puts "    FAILED TEST".colorize(:red)
end

if ri1[0].recipe == pizza
  puts "    recipeingredients.recipe returns ri recipe".colorize(:green)
else
  puts "    FAILED TEST".colorize(:red)
end

# puts "   # Ingredient Test".colorize(:yellow)

puts "## USER <-> ALLERGEN <-> INGREDIENT".colorize(:magenta)

puts "  User Test".colorize(:yellow)
if dick.allergens == [milk, wheat, strawberry]
  puts "    user.allergens returns  array of users  allergens".colorize(:green)
else
  puts "    FAILED TEST".colorize(:red)
end

puts "  Ingredient Test".colorize(:yellow)
if Ingredient.most_common_allergen == milk
  puts "    user.allergens returns  array of users  allergens".colorize(:green)
else
  puts "    FAILED TEST".colorize(:red)
end


puts "## RECIPE <-> RECIPE_INGREDIENT <-> INGREDIENT <-> ALLERGEN".colorize(:magenta)

puts "  Final Boss".colorize(:yellow)
if pizza.allergens == [milk, wheat, tomato_sauce]
  puts "    recipe.allergens returns  array of recipes  allergens".colorize(:green)
else
  puts "    FAILED TEST".colorize(:red)
end

# binding.pry
