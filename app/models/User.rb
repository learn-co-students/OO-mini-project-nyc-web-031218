class User

  @@all = []

  def initialize
    @@all << self
    @recipes = []
  end

  def self.all
    @@all
  end

  def recipe
    @recipe
  end

  def add_recipe_card(recipe, date, rating)
    new_recipe_card = RecipeCard.new(self, recipe, date, rating)
    RecipeCard.all << new_recipe_card
    @recipe << recipe
  end

  def declare_allergen

  end

  def allergens

  end

  def top_three_recipes

  end

  def most_recent_recipes

  end

end
