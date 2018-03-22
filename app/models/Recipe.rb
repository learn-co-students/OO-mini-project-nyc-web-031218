class Recipe
  ALL = []

  attr_accessor :name

  def initialize(name)
    @name = name
    ALL << self
  end

  def self.all
    ALL
  end

  def users
    #chili.users
    RecipeCard.all.select do |recipecard|
      recipecard.recipe == self
    end
  end

  def ingredients
    #chili.ingredients
    relevant_ingredients = RecipeIngredient.all.select do |recipeingredient|
      recipeingredient.recipe == self
    end

    relevant_ingredients.map do |recipeingredient|
      recipeingredient.ingredient
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

  def add_ingredients(ingredients)
    ingredients.map do |ingredient|
      RecipeIngredient.new(self, ingredient)
    end
  end

end
