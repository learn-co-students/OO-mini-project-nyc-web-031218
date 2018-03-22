class User
  ALL = []

  attr_reader :name, :allergens, :recipecards

  def initialize(name)
    @name = name
    ALL << self
  end

  def self.all
    ALL
  end

  def recipes
    relevant_recipes = RecipeCard.all.select do |recipecard|
      recipecard.user == self
    end

    relevant_recipes.map do |recipecard|
      recipecard.recipe
    end
  end

  def add_recipe_card(recipe)
    RecipeCard.new(self, recipe)
  end

  def declare_allergen(ingredient)
    #henry.declare_allergen
    Allergen.new(self, ingredient)
  end

  def allergens
    #adam.allergens
    Allergen.all.select do |allergen|
      allergen.user == self
    end
  end

  def top_three_recipes
    relevant_recipes = RecipeCard.all.select do |recipecard|
      recipecard.user == self
    end

    sorted = relevant_recipes.sort_by.reverse_each do |recipecard|
      recipecard.rating
    end

    user_favs = sorted.map do |recipecard|
      recipecard.recipe
    end

    user_favs[0..2]
  end

  def most_recent_recipe
    # most_recent = nil

    relevant_recipes = RecipeCard.all.select do |recipecard|
      recipecard.user == self
    end

    sorted = relevant_recipes.sort_by do |recipecard|
      recipecard.date
    end

    sorted[-1].recipe
  end

end
