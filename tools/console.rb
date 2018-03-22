require_relative '../config/environment.rb'

#write the test code here
#any dummy instances

t1 = Time.new(2018)
t2 = Time.new(2017)
t3 = Time.new(2016)
t4 = Time.new(2015)

beef = Ingredient.new("Beef")
tomatoes = Ingredient.new("Tomatoes")
milk = Ingredient.new("Milk")
sugar = Ingredient.new("Sugar")
beans = Ingredient.new("Beans")
cheese = Ingredient.new("Cheese")
lettuce = Ingredient.new("Lettuce")

ingredient_array = [beans, cheese]
#chili.add_ingredients([beans, cheese])

adam = User.new("Adam")
henry = User.new("Henry")
jesse = User.new("Jesse")
tim = User.new("Tim")

chili = Recipe.new("Chili")
ice_cream = Recipe.new("Ice Cream")
salad = Recipe.new("Salad")
sandwich = Recipe.new("Sandwich")

chili_tomatoes = RecipeIngredient.new(chili, tomatoes)
chili_beef = RecipeIngredient.new(chili, beef)
icecream_milk = RecipeIngredient.new(ice_cream, milk)
icecream_sugar = RecipeIngredient.new(ice_cream, sugar)
salad_beans = RecipeIngredient.new(salad, beans)
salad_lettuce = RecipeIngredient.new(salad, lettuce)
sandwich_tomatoes = RecipeIngredient.new(sandwich, tomatoes)
sandwich_beef = RecipeIngredient.new(sandwich, beef)

adam_tomatoes = Allergen.new(adam, tomatoes)
adam_beef = Allergen.new(adam, beef)
henry_tomatoes = Allergen.new(henry, tomatoes)
jesse_tomatoes = Allergen.new(jesse, tomatoes)
tim_tomatoes = Allergen.new(tim, tomatoes)

adam_chili = RecipeCard.new(adam, chili, 100, t1)
adam_icecream = RecipeCard.new(adam, ice_cream, 85, t2)
adam_salad = RecipeCard.new(adam, salad, 75, t3)
adam_sandwich = RecipeCard.new(adam, sandwich, 50, t4)
henry_chili = RecipeCard.new(henry, chili, 20, t4)
henry_icecream = RecipeCard.new(henry, ice_cream, 30, t3)
henry_salad = RecipeCard.new(henry, salad, 50, t2)
henry_sandwich = RecipeCard.new(henry, sandwich, 100, t1)



binding.pry
