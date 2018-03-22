require_relative '../config/environment.rb'

user = User.new
u2 = User.new
u3 = User.new

recipe = Recipe.new(1)
r2 = Recipe.new(2)
r3 = Recipe.new(3)
r4 = Recipe.new(4)

i1 = Ingredient.new("milk")
i2 = Ingredient.new("nuts")
i3 = Ingredient.new("water")
i4 = Ingredient.new("salt")
i5 = Ingredient.new("pepper")

r2.add_ingredients([i1,i2,i3])
recipe.add_ingredients([i1,i5])
r3.add_ingredients([i4,i5])
r4.add_ingredients([i1,i2,i3,i4,i5])


user.declare_allergen(i1)
user.declare_allergen(i2)
# u2.declare_allergen(i3)
u3.declare_allergen(i2)


#
# card = RecipeCard.new(recipe, '2/4/2018', 5)
#
# # 2018-03-22 11:43:54 -0400
#
user.add_recipe_card(recipe, Time.new, 5)
u2.add_recipe_card(recipe, Time.new, 5)
u3.add_recipe_card(recipe, Time.new, 5)

user.add_recipe_card(r2, Time.new, 4)
u2.add_recipe_card(r2, Time.new, 5)

user.add_recipe_card(r3, Time.new, 3)



binding.pry
