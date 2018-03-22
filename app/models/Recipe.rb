require 'pry'

class Recipe

  @@all = []

  attr_accessor :ingredients, :users, :count, :name

  def self.all
    @@all
  end

  def initialize(name)
    @@all << self
    @name = name
    @ingredients = []
    @count = 0
  end

  def users
    users_for_recipe = []
    get_recipes = RecipeCard.all.select { |rc| rc.recipe = self }
    get_recipes.each {|recipe|
      if !users_for_recipe.include?(recipe.user)
        users_for_recipe << recipe.user
      end}
    users_for_recipe
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
   allergen_i = []
    RecipeCard.all.each do |rc|
      if rc.recipe == self
        rc.recipe.ingredients.each do |i|
          if i.is_allergen == true
            allergen_i << i
          end
        end
      end
    end
    allergen_i
  end

  def add_ingredients(ingredients)
    ingredients.each do |ingredient|
      @ingredients << ingredient
      create_ri(ingredient)
    end
  end

  def create_ri(ingredient)
    RecipeIngredient.new(self, ingredient)
  end

end

#Pry.start
