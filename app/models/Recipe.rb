
class Recipe

  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_popular
  recipe_counter_hash = {}
  popular = nil
  @@all.each do |recipe|
    recipe_counter = 0
    RecipeCard.all.each do |card|
      if card.recipe == recipe
        recipe_counter += 1
        recipe_counter_hash[recipe] = recipe_counter
      end
    end
  end
  recipe_counter_hash.each do |key, value|
  if value == recipe_counter_hash.values.sort.last
    popular = key
  end
  end
  popular
  end

  def users
    user_recipe_cards = []
    RecipeCard.all.each do |card|
      if card.recipe == self
        user_recipe_cards << card.user
      end
    end
    user_recipe_cards
  end

  def ingredients
    recipe_ingredients = []
    RecipeIngredient.all.each do |ingredient|
      if ingredient.recipe == self
        recipe_ingredients << ingredient.ingredient
      end
    end
    recipe_ingredients
  end

  def allergens
    allergens = []
    Allergen.all.each do |allergen|
      if self.ingredients.include?(allergen.ingredient)
          allergens << allergen.ingredient
      end
    end
    allergens
  end

  def add_ingredients(ingredients)
    ingredients.each do |ingredient|
      RecipeIngredient.new(ingredient, self)
      self.ingredients << ingredient
    end
  end

end
