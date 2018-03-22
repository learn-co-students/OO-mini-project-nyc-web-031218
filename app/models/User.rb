class User

  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def recipes
    user_recipes = user_recipe_cards.map {|card| card.recipe}
  end

  def user_recipe_cards
    RecipeCard.all.select do |card|
      card.user == self
    end
  end

  def add_recipe_card(recipe, date, rating)
    RecipeCard.new(self, recipe, date, rating)
  end

  def declare_allergen(ingredient)
    new_allergy = Allergen.new(self,ingredient)
  end

  def allergens
    Allergen.all.select do |allergy|
      allergy.user == self
    end.map {|i| i.ingredient}
  end

  def top_three_recipes
    self.user_recipe_cards.sort_by do |card|
      card.rating
    end.reverse[0..2]
  end


  #TO DO: date error checking
  def most_recent_recipe
    self.user_recipe_cards.sort_by do |card|
      card.date
    end.last
  end

  def safe_recipes
    allergies = self.allergens
    Recipe.all.select do |recipe|
      !recipe.ingredients.any? do |ingredient|
        allergies.include?(ingredient)
      end
    end

  end


end
