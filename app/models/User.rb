class User

  @@all = []

  def initialize()
    @@all << self
    @recipes = []
    @allergens = []
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

  def declare_allergen(ingredient)
    Allergen.new(self, ingredient)
    @allergens << ingredient
  end

  def allergens
    @allergens
  end

  def top_three_recipes
    user_recipes = get_users_recipes
    sorted_recipes = user_recipes.sort_by do |recipe|
      recipe.rating
    end.reverse
    sorted_recipes[0..2]
  end

  def get_users_recipes
    RecipeCard.all.select do |rc|
      rc.user = self
    end
  end

  def most_recent_recipes
    get_users_recipes[-1]
  end

end
