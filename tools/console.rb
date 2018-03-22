require_relative '../config/environment.rb'

christian = User.new("Christian")
jon = User.new("Jon")

tomato = Ingredient.new
pasta = Ingredient.new
cheese = Ingredient.new
nuts = Ingredient.new
meat = Ingredient.new
bread = Ingredient.new
lettuce = Ingredient.new

salad = Recipe.new
pizza = Recipe.new
sp = Recipe.new
pbs = Recipe.new
pesto = Recipe.new

salad.add_ingredients([lettuce, tomato, cheese])
pizza.add_ingredients([bread, tomato, cheese])
sp.add_ingredients([pasta, tomato, cheese])
pbs.add_ingredients([bread, nuts])
pesto.add_ingredients([nuts, meat, cheese])

christian.add_recipe_card(pizza, "n", 10)
christian.add_recipe_card(sp, "n", 7)
christian.add_recipe_card(pbs, "n", 5)
jon.add_recipe_card(pizza, "n", 10)
jon.add_recipe_card(salad, "n", 8)
jon.add_recipe_card(pesto, "n", 5)

christian.declare_allergen(nuts)
jon.declare_allergen(nuts)
jon.declare_allergen(meat)


binding.pry
