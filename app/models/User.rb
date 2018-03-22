class User
  attr_accessor :name, :recipe
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def recipe_cards
    RecipeCard.all.select do |rc|
      rc.user == self
    end
  end

  def self.all
    @@all
  end

  def add_recipe_card(recipe, date, rating)
    rc = RecipeCard.new(recipe, date, rating)
    rc.user = self
  end

  def declare_allergen(ingredient)
    allr = Allergen.new(ingredient)
    allr.user = self
  end

  def allergens
    arr = Allergen.all.select do |allergen|
      allergen.user == self
    end
    arr.map do |allergen|
      allergen.ingredient
    end
  end

  def top_three_recipes
    arr = recipe_cards
    ans = arr.sort_by do |rc|
      rc.rating
    end
    ans = ans.reverse
    ans[0..2]
  end

  def most_recent_recipe
    recipe_cards[-1]
  end

  def recipes
    arr = recipe_cards
    arr.map do |rc|
      rc.recipe
    end
  end

  def safe_recipes
    unsafe = allergens

    self.recipes.select do |recipe|
      bool = true
      recipe.ingredients.each do |ingredient|
        if unsafe.include?(ingredient)
          bool = false
        end
      end

      bool
    end
  end
end
