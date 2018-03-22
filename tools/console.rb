require_relative '../config/environment.rb'

manuel = User.new("manuel")
roger = User.new("roger")
alice = User.new("alice")
vicky = User.new("Vicky")
ground_turkey = Ingredient.new("ground turkey")
ground_beef = Ingredient.new("ground beef")
ground_pork = Ingredient.new("ground pork")
peanut = Ingredient.new("peanut")
chocolate = Ingredient.new("chocolate")
chocolate_ingredients= ["chocolate"]
gluten = Ingredient.new("gluten")
recipe = Recipe.new("Meatballs",["ground turkey", "tomato paste", "linguiini"])
recipe2 = Recipe.new("Burgers")
chocolate_pie = Recipe.new("Chocolate Pie",chocolate_ingredients)
quesadilla_ingre = ["cheese", "flour","tortilla","cheddar"]
quesadilla = Recipe.new("quesadilla",quesadilla_ingre)
recipe2.add_ingredients([ground_beef])
recipe3 = Recipe.new("Tacos")
recipe3.add_ingredients([peanut])
manuel.declare_allergen(ground_pork)
manuel.declare_allergen(gluten)
alice.declare_allergen(chocolate)
roger.declare_allergen(peanut)
manuel.declare_allergen(peanut)
manuel.add_recipe_card(recipe, "2017/11/10", 5)
manuel.add_recipe_card(recipe2, "1995/05/17", 1)
manuel.add_recipe_card(recipe3, "2010/02/02", 4.5)
manuel.add_recipe_card(recipe, "2018/02/18", 0)
manuel.add_recipe_card(recipe2, "2003/09/12", 10)
manuel.add_recipe_card(recipe3, "2017/12/24", 7)
roger.add_recipe_card(recipe3, "2011/09/14", 7)
alice.add_recipe_card(recipe3, "2018/01/09", 7)
vicky.add_recipe_card(recipe3, "2017/12/06", 7)
# p manuel

# p recipe
# p manuel.recipes
# p manuel.top_three_recipes
# puts
# puts
# p manuel.most_recent_recipe
# p manuel.most_recent_recipe.date.to_s
p manuel.allergens
# binding.pry

# puts recipe2
#
# puts
# puts recipe2.ingredients
# puts recipe2.ingredients.first.name
binding.pry
