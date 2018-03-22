r = Recipe.new("r")
r2 = Recipe.new("r2")
u = User.new
rc = RecipeCard.new(u, r)
rc2 = u.add_recipe_card(r2)

# rc.user
# rc.recipe
# rc.date
#
# rc2.recipe.name
