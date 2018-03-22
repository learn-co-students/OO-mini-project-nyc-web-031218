class Recipe

attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
  # Recipe.all should return all of the recipe instances
    @@all
  end

  def self.most_popular
  # should return the recipe instance with the highest number of users (the recipe that has the most recipe cards)
  a = Recipe.all.sort_by do |x|
    puts "The #{x.name} returns #{x.users.count}"
    x.users.count
    end
  # a.first.users.count
  a.select {|item| item.users.count == a.last.users.count}
  end

  def users
  #should return the user instances who have recipe cards with this recipe
  cards = RecipeCard.all.select do |item|
    item.recipe == self
  end
  cards.map do |card|
    card.user
  end.uniq
  end

  def ingredients
  #Recipe #ingredients should return all of the ingredients in this recipe
    recipe = RecipeIngredient.all.select do |item|
      item.recipe == self
    end
    recipe.map do |r|
      r.ingredient
    end.flatten
  end

  def allergens
  # Recipe #allergens should return all of the ingredients
  # in this recipe that are allergens
  matches = []
  r = ingredients
  a = Allergen.all.map do |i|
    i.ingredient
  end
  a.each do |item|
      if r.include?(item)
        matches << item
      end
    end
  end

  def add_ingredients(ingredients_array)
  # Recipe #add_ingredients should take an array of
  # ingredient instances as an argument and associate each of those
  # ingredients with this recipe
    RecipeIngredient.new(self, ingredients_array)
  end



end
