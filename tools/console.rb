require_relative '../config/environment.rb'

amy = User.new("Amy")
billy = User.new("Billy")
carol = User.new("Carol")

cookies = Recipe.new("cookies")
quiche = Recipe.new("quiche")
soup = Recipe.new("soup")

milk = Ingredient.new("milk")
nuts = Ingredient.new("nuts")
water = Ingredient.new("water")
salt = Ingredient.new("salt")
pepper = Ingredient.new("pepper")
eggs = Ingredient.new("eggs")

cookies.add_ingredients([milk, nuts])
quiche.add_ingredients([eggs, salt, pepper])
soup.add_ingredients([water, nuts, salt, pepper])

amy.add_recipe_card(cookies, Time.new, 5)
billy.add_recipe_card(cookies, Time.new, 5)
carol.add_recipe_card(cookies, 5)
amy.add_recipe_card(quiche, 4)
billy.add_recipe_card(quiche, 4)
carol.add_recipe_card(soup, 2)

amy.declare_allergen(nuts)
amy.declare_allergen(milk)
billy.declare_allergen(milk)

binding.pry
