class Recipe
  @@all = []

  attr_accessor :id

  def initialize(id)
    @@all << self
    @id = id
  end

  def self.all
    @@all
  end

  def recipe_cards
    RecipeCard.all.select do |recipe_card|
      recipe_card.recipe == self
    end
  end

  def self.most_popular
    @@all.sort_by { |r| r.recipe_cards.length }.reverse.first
  end

  def users
    recipe_card.map do |r|
      r.users
    end
  end

  def recipe_ingredients
    RecipeIngredient.all.select do |ri|
      ri.recipe == self
    end
  end

  def ingredients
    recipe_ingredients.map do |r|
      r.ingredient
    end
  end

  def allergens
    ingredients.select do |i|
      Allergen.allergen_ingredients.include?(i)
    end
  end

  def add_ingredients(ingredients)
    ingredients.each do |i|
      RecipeIngredient.new(self, i)
    end
  end
end
