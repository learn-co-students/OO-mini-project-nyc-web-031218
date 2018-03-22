require_relative '../config/environment.rb'

christian = User.new("Christian")
jon = User.new("Jon")

tomato = Ingredient.new("tomato")
pasta = Ingredient.new("pasta")
cheese = Ingredient.new("cheese")
nuts = Ingredient.new("nuts")
meat = Ingredient.new("meat")
bread = Ingredient.new("bread")
lettuce = Ingredient.new("lettuce")

salad = Recipe.new("salad")
pizza = Recipe.new("pizza")
sp = Recipe.new("spaghetti")
pbs = Recipe.new("peanut-butter sandwich")
pesto = Recipe.new("pesto")

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
