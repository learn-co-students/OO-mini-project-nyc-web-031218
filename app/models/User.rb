class User

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

def self.all
  @@all
end

def recipes
  #should return all of the recipes this user has recipe cards for
  RecipeCard.all.select do |item|
    item.user == self
  end
end

def add_recipe_card(recipe, rating = 0, date = Time.now)
  #should accept a recipe instance as an argument, as well as a date and rating, and create a new recipe card for this user and the given recipe
  RecipeCard.new(self, recipe, date, rating)
end

def declare_allergen(ingredient)
  #should accept an ingredient instance as an argument,
  #and create a new allergen instance for this user and
  #the given ingredient
  Allergen.new(self, ingredient)
end

def allergens
  #should return all of the ingredients this user is allergic to
  Allergen.all.select do |item|
    item.user == self
  end
end

def top_three_recipes
  #should return the top three highest rated recipes for this user.
  recipes.sort_by do |item|
    item.rating
  end.reverse[0..2]
end

def most_recent_recipe
  #should return the recipe most recently added to the user's cookbook.
  largest_date = 0
  newest_recipe = nil

  recipes.each do |item|
    #come back and remove .to_i
    if item.date.to_i > largest_date.to_i
      newest_recipe = item
      largest_date = item.date
    end
  end
  newest_recipe
end

end
