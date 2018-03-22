class Recipe
  @@all = []
  attr_accessor :users, :ingredients, :name

  def initialize(name)
    @name = name
    @@all << self
    @ingredients = []
  end

  def self.most_popular
    arr = RecipeCard.all.map do |rc|
      rc.recipe
    end
    hash = Hash.new(0)
    arr.each do |recipe|
      hash[recipe] +=1
    end
    i = hash.values[0]
    j = 0
    hash.each_with_index do |(name, count), index|
      if count > i
        j = index
        i = count
      end
    end
    hash.keys[j]
  end

  def add_ingredients(arr)
    arr.each do |ingredient|
      self.ingredients << ingredient
      RecipeIngredient.new(ingredient, self)
    end
  end

  def allergens
    ing = Allergen.all.map do |allergen|
      allergen.ingredient
    end
    self.ingredients.select do |ingredient|
      ing.include?(ingredient)
    end
  end

  def self.all
    @@all
  end
end
