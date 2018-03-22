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
    @recipes
  end

  def add_recipe_card(recipe, date, rating)
    RecipeCard.new(self, recipe, date, rating)
    @recipes << recipe
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
