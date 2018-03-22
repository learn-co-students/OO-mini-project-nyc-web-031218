require_relative '../config/environment.rb'
require 'pry'


t1 = Time.new(2018)
t2 = Time.new(2017)
t3 = Time.new(2016)
t4 = Time.new(2015)


beans = Ingredient.new("beans")
cheese = Ingredient.new("cheese")
lettuce = Ingredient.new("lettuce")
beef = Ingredient.new("beef")
tomatoes = Ingredient.new("tomatoes")
milk = Ingredient.new("milk")
sugar = Ingredient.new("sugar")



adam = User.new("Adam")
henry = User.new("Henry")
jesse = User.new("Jesse")
tim = User.new("Tim")


chili = Recipe.new("Chili")
ice_cream = Recipe.new("Ice cream")
salad = Recipe.new("Salad")
sandwich = Recipe.new("Sandwich")

chili_tomatoes = RecipeIngredient.new(tomatoes, chili)
chili_beef = RecipeIngredient.new(beef, chili)
ice_cream_milk = RecipeIngredient.new(milk, ice_cream)
ice_cream_sugar = RecipeIngredient.new(sugar, ice_cream)
salad_lettuce = RecipeIngredient.new(lettuce, salad)
salad_beans = RecipeIngredient.new(beans, salad)
sandwich_tomatoes = RecipeIngredient.new(tomatoes, sandwich)
sandwich_beef = RecipeIngredient.new(beef, sandwich)

adam_milk = Allergen.new(adam, milk)
henry_tomatoes = Allergen.new(henry, tomatoes)
adam_beef = Allergen.new(adam, beef)
tim_tomatoes = Allergen.new(tim, tomatoes)
jesse_tomatoes = Allergen.new(jesse, tomatoes)


ingredient_array = [beans,cheese]





adam_ice_cream = RecipeCard.new(adam, ice_cream, 90, t1)
henry_sandwich = RecipeCard.new(henry, sandwich, 80, t2)
adam_salad = RecipeCard.new(adam, salad, 70, t3)
henry_chili = RecipeCard.new(henry, chili, 90, t4)
adam_chili = RecipeCard.new(adam, chili, 100, t2)
henry_ice_cream = RecipeCard.new(henry, ice_cream, 80, t1)
adam_sandwich = RecipeCard.new(adam, sandwich, 70, t3)
henry_salad = RecipeCard.new(henry, salad, 90, t4)
binding.pry
