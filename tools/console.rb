require_relative '../config/environment.rb'



kate = User.new('Kate')
laura = User.new('Laura')

pie = Recipe.new('Pie')
cake = Recipe.new('Cake')
cookies = Recipe.new('Cookies')
cupcakes = Recipe.new('Cupcakes')

laura.add_recipe_card(pie, '3/22', 5)
kate.add_recipe_card(cake, '3/22', 10)
laura.add_recipe_card(cookies, '3/22', 7)
kate.add_recipe_card(pie, '3/22', 8)

flour = Ingredient.new('flour')
chocolate_chips= Ingredient.new('chocolate chips')
eggs = Ingredient.new('eggs')
sugar = Ingredient.new('sugar')
nuts = Ingredient.new('peanuts')
butter = Ingredient.new('butter')
vanilla = Ingredient.new('vanilla extract')

pie.add_ingredients([butter, chocolate_chips, eggs])

kate.declare_allergen(chocolate_chips)
laura.declare_allergen(nuts)
laura.declare_allergen(chocolate_chips)
laura.allergens
kate.allergens
pie.ingredients
pie.allergens
puts Ingredient.most_common_allergen
puts kate.top_three_recipes
