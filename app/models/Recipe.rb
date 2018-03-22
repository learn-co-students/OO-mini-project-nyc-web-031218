require 'pry'

class Recipe
  ALL = []

  def initialize(name)
    @name = name
    ALL << self
  end

  def users
    RecipeCard.all.select do |recipecard|
      recipecard.recipe == self
    end
  end

  def allergens
  #check this against allergens
  #if recipe item is equal to the ingredient of an allergen
  allergen_ingredients = Allergen.all.map do |allergen|
    allergen.ingredient
  end
  #allergen_ingredients is an array of ingredients instances
  allergens_included = self.ingredients.select do |ingredient|
    if allergen_ingredients.include?(ingredient)
      ingredient
    end
  end
end

  def ingredients
    relevant_ingredient = RecipeIngredient.all.select do |recipeingredient|
      recipeingredient.recipe == self
    end

    relevant_ingredient.map do |recipeingredient|
      recipeingredient.ingredient
    end
end

  def add_ingredients(ingredients)
    ingredients.map do |ing|
    RecipeIngredient.new(ing, self)
  end
  end

  def self.all
    ALL
  end

end
