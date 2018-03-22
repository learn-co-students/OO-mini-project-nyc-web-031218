class User

  @@all = []

  attr_accessor :name, :user

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def recipes
    user_recipes = []
    RecipeCard.all.select do |card|
        if card.user == self
          user_recipes << card.recipe
        end
    end
    user_recipes
  end

  def add_recipe_card(recipe, date, rating)
      new_recipe = RecipeCard.new(recipe, date, rating)
      new_recipe.user = self
  end

  def declare_allergen(ingredient)
    new_allergen = Allergen.new(ingredient, self)

  end

  def allergens
    allergens = []
    Allergen.all.each do |allergen|
    if allergen.user == self
      allergens << allergen.ingredient
    end
  end
  allergens
  end

  def top_three_recipes
    top_three_array = []
    top_three = RecipeCard.all.sort_by{|x| x.rating}.reverse
    top_three_array << top_three [0..2]
    top_three_array
  end

  def most_recent_recipe
    @@all.last
  end


end
