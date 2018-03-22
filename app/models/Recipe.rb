require 'pry'

class Recipe

  @@all = []

  attr_accessor :ingredients, :users

  def self.all
    @@all
  end

  def initialize()
    @@all << self
    @ingredients = []
  end

  def self.most_popular
    all_recipes = RecipeCard.all.collect do |recipe_card, values|
      recipe_card.recipe
    end
    all_recipes.mode
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
