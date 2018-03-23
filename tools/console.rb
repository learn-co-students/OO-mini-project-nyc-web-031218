require_relative '../config/environment.rb'


mark = User.new("Mark")
harim = User.new("Harim")
rani = User.new("Rani")

pizza  = Recipe.new("Pizza")
pasta  = Recipe.new("Pasta")
salad = Recipe.new("Salad")
burger = Recipe.new("Burger")

harim.add_recipe_card(pasta, 4, "June")
# harim.add_recipe_card(salad, 8, "May")
harim.add_recipe_card(burger, 7, "April")
rani.add_recipe_card(pasta, 5, "June")
rani.add_recipe_card(pizza, 2, "Dec")
rani.add_recipe_card(burger, 2, "Dec")
mark.add_recipe_card(burger, 5, "June")
# mark.add_recipe_card(salad, 7, "Nov")

tomato = Ingredient.new("Tomato")
potato = Ingredient.new("Potato")
artichoke = Ingredient.new("Artichoke")
gruyere = Ingredient.new("Gruyere")
peanut = Ingredient.new("Peanut")
chocolate = Ingredient.new("Chocolate")

harim.declare_allergen(tomato)
harim.declare_allergen(peanut)
harim.declare_allergen(chocolate)
rani.declare_allergen(tomato)
rani.declare_allergen(artichoke)
rani.declare_allergen(peanut)
mark.declare_allergen(tomato)

pizza.add_ingredients([tomato,gruyere,artichoke])
pasta.add_ingredients([tomato,peanut])




binding.pry
# 3 burgers
# 2 pastas
# 1 pizza
# 0 salads
