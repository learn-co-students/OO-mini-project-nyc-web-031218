require_relative '../config/environment.rb'


pizza = Recipe.new("pizza")
pie = Recipe.new("pie")
soup = Recipe.new("soup")

justin = User.new("Justin")
jeremy  = User.new("Jeremy")
dick = User.new("Dick")

dough = Ingredient.new("Dough")
sauce = Ingredient.new("Sauce")
cheese = Ingredient.new("Cheese")

apples = Ingredient.new("Apples")
cinnamon = Ingredient.new("Cinnamon")
sugar = Ingredient.new("Sugar")

broth = Ingredient.new("Broth")
onions = Ingredient.new("Onions")
croutons = Ingredient.new("Croutons")

pizza_ingredients =[dough, sauce, cheese]
pie_ingredients =[apples, cinnamon, sugar, dough]
soup_ingredients =[broth, onions, croutons, cheese]

pizza.add_ingredients(pizza_ingredients)
pie.add_ingredients(pie_ingredients)
soup.add_ingredients(soup_ingredients)

Allergen.new(justin, onions)
Allergen.new(jeremy, broth)
Allergen.new(dick, apples)

RecipeCard.new(justin, pizza, "Monday", 5)
RecipeCard.new(jeremy, soup, "Tuesday", 3)
RecipeCard.new(dick, soup, "Wednesday", 4)
RecipeCard.new(dick, pie, "Friday", 5)

# RecipeIngredient.new(dough, pizza)
# RecipeIngredient.new(sauce, pizza)
# RecipeIngredient.new(cheese, pizza)
#
# RecipeIngredient.new(dough, pie)
# RecipeIngredient.new(sugar, pie)
# RecipeIngredient.new(cinnamon, pie)
# RecipeIngredient.new(apples, pie)
#
# RecipeIngredient.new(broth, soup)
# RecipeIngredient.new(onions, soup)
# RecipeIngredient.new(croutons, soup)
# RecipeIngredient.new(cheese, soup)

binding.pry
