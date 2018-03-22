require 'pry'

class Recipe

  @@all = []

  attr_accessor :ingredients, :users, :count

  def self.all
    @@all
  end

  def initialize()
    @@all << self
    @ingredients = []
    @count = 0
  end

  def self.most_popular
    max = 0
    most_popular_recipe = nil
    RecipeCard.all.each do |recipe_card|
      if recipe_card.recipe.count > max
        max = recipe_card.recipe.count
        most_popular_recipe = recipe_card.recipe
      end
    end
    most_popular_recipe
  end

  def allergens

  end

  def add_ingredients(ingredients)
    ingredients.each do |ingredient|
      @ingredients << ingredient
    end
  end


end

#Pry.start
