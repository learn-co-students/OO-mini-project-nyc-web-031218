class User
  @@all = []

  def initialize
    @@all << self
  end

  def self.all
    @@all
  end

  def recipe_cards
    RecipeCard.all.select do |recipe_card|
      recipe_card.user == self
    end
  end

  def recipes
    recipe_cards.map do |r|
      r.recipe
    end
  end

  def add_recipe_card(recipe, date = Time.new, rating)
    RecipeCard.new(self, recipe, date, rating)
  end

  def declare_allergen(ingredient)
    Allergen.new(self, ingredient)
  end

  def user_allergens
    Allergen.all.select {|allergen| allergen.user == self}
  end

  def allergens
    user_allergens.map {|a| a.ingredient}
  end

  def top_three_recipes
    recipe_cards.sort_by{ |recipe_card| recipe_card.rating }.reverse.slice(0..2)
  end

  def most_recent_recipe
    recipe_cards.sort_by { |recipe_card| recipe_card.date }.reverse.first
  end

  def contains_allergens?(recipe)
    similar = recipe.ingredients & allergens
    similar.length > 0
  end

  def safe_recipes
    Recipe.all.select do |r|
      !contains_allergens?(r)
    end
  end
end
