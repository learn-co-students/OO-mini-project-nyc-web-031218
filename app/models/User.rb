class User

    ALL = []

  def initialize(name)
    @name = name
    ALL << self
  end

  def recipes
    relevent_recipes = RecipeCard.all.select do |recipecard|
      recipecard.user == self
    end

    relevent_recipes.map do |recipecard|
      recipecard.recipe
    end
  end

  def declare_allergen(ingredient)
    Allergen.new(self, ingredient)
  end

  def add_recipe_card(recipe)
    RecipeCard.new(self, recipe)
  end

  def allergens
    Allergen.all.select do |allergen|
      allergen.user == self
    end
  end

  def self.all
    ALL
  end

  def top_three_recipes
    relevent_recipes = RecipeCard.all.select do |recipecard|
      recipecard.user == self
    end

    sorted = relevent_recipes.sort_by.reverse_each do |recipecard|
      recipecard.rating
    end

    user_faves = sorted.map do |recipecard|
      recipecard.recipe
    end

    user_faves[0..2]

  end

  def most_recent_recipe


    relevent_recipes = RecipeCard.all.select do |recipecard|
      recipecard.user == self
    end

    sorted = relevent_recipes.sort_by do |recipecard|
      recipecard.date
    end

    sorted[-1].recipe


  end


end
