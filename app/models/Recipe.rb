class Recipe
  @@all = []

  attr_reader :name

  def initialize(name)
    @@all << self
    @name = name
  end

  def self.all
    @@all
  end

  def self.most_popular
    counter_hash = {}
    RecipeCard.all.each do |recipe_card|
      if counter_hash[recipe_card.recipe]
        counter_hash[recipe_card.recipe] += 1
      else
        counter_hash[recipe_card.recipe] = 1
      end
    end
    counter_hash.max_by {|k,v| v}[0]
  end

  def users
    matching_recipe_cards = RecipeCard.all.select do |recipe_card|
      recipe_card.recipe == self
    end
    matching_recipe_cards.map do |recipe_card|
      recipe_card.user
    end
  end

  def add_ingredients(ingredient_array)
    ingredients = []
    ingredient_array.each do |ingredient|
     ingredients << RecipeIngredient.new(ingredient, self)
    end
    ingredients
  end

  def ingredients
    self.find_recipeingredients.map do |ri|
      ri.ingredient
    end
  end

  def find_recipeingredients
    RecipeIngredient.all.select do |ri|
      ri.recipe == self
    end
  end


  def allergens
    self.ingredients.each do |ingredient|
      ingredient.is_allergen?
    end
  end


end





 # counter_hash[r] ? counter_hash[r] += 1 : counter_hash[r] = 1
