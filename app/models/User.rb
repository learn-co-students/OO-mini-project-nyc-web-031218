class User
  @@all = []


  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def recipes
    array = RecipeCard.all.select do |recipecard|
          recipecard.user == self
        end
    array.map do |recipecard|
      recipecard.recipe
    end
  end

  def add_recipe_card(recipe, date, rating)
    RecipeCard.new(self, recipe, date, rating)
  end

  def declare_allergen(ingredient)
    Allergen.new(self, ingredient)
  end

  def allergens
    Allergen.all.select do |allergen|
      allergen.user == self
      end
  end

  def safe_recipes
  unsafe = Recipe.all.map do |recipe|
    if recipe.ingredients.any?{|ingredient| 
      allergens.any?{|allergen| ingredient == allergen.ingredient}}
        recipe
    end
  end
    Recipe.all - unsafe
  end

  def top_three_recipes
    array = RecipeCard.all.select do |recipecard|
      recipecard.user == self
      end
    array.sort{|a,b| b.rating - a.rating}.first(3)
    end

    def most_recent_recipe
      cook_book = recipes
      cook_book.last
    end

    def recipes
      cook_book = RecipeCard.all.select do |recipecard|
        recipecard.user == self
        end
    end
end
