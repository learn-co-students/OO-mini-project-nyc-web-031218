class Recipe
  attr_accessor :dish_name

  @@all = []
  def initialize(dish_name)
    @dish_name = dish_name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_popular
    frequency_hash = RecipeCard.all.inject(Hash.new(0)) do |hash, recipecard|
      hash[recipecard.recipe] += 1; hash
    end
    frequency_hash.max_by{|k,v| v }
    #binding.pry
  end

  def users
  array = RecipeCard.all.select do |recipecard|
        recipecard.recipe == self

      end
  array.map do |recipecard|
    recipecard.user
    end
  end

  def ingredients
    array = RecipeIngredient.all.select do |recipeingredient|
      recipeingredient.recipe == self
      end
    array.map do |recipeingredient|
      recipeingredient.ingredient
      end
    end

  def allergens
    ingredients.select do |ingredient|
      #Allergen.find_by_ingredient(ingredient)
      Allergen.all.find{|allergen| allergen.ingredient == ingredient }
    end
  end

  def add_ingredients(ingredients)
    ingredients.each do |ingredient|
      RecipeIngredient.new(ingredient, self)
    end

  end

end
