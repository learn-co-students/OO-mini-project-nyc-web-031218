class User

  @@all = []

  attr_accessor :name

  def initialize(name = nil)
    @@all << self
    @name = name
  end

  def self.all
    @@all
  end

  def recipes
    RecipeCard.all.select { |rc| rc.user == self }
  end

  def add_recipe_card(recipe, date, rating)
    RecipeCard.new(self, recipe, date, rating)
    recipes << recipe
  end

  def declare_allergen(ingredient)
    allergen1 = Allergen.new(self, ingredient)
    allergen1.ingredient.is_allergen = true
    # RecipeCard.all.each do |rc|
    #   rc.recipe.ingredients.each do |i|
    #     if i == allergen1.ingredient
    #       i.is_allergen = true
    #     end
    #   end
    # end
  end

  def allergens
    Allergen.all.select { |rc| rc.user == self }
  end

  def top_three_recipes
    user_recipes = recipes
    sorted_recipes = user_recipes.sort_by do |recipe|
      recipe.rating
    end.reverse
    sorted_recipes[0..2]
  end

  def get_users_recipes
    RecipeCard.all.select do |rc|
      rc.user == self
    end
  end

  def most_recent_recipes
    get_users_recipes[-1]
  end

end
