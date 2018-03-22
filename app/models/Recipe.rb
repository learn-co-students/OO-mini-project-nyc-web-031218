class Recipe

  attr_accessor :name
  @@all = []

  def initialize(name, ingredients = nil)
    @name = name

    @@all << self
    self.add_ingredients(ingredients) if ingredients
  end

  def self.all
    @@all
  end

  def self.most_popular
    card_hash={}
    RecipeCard.all.each do |card|
      card_hash[card.recipe] ||=0
      card_hash[card.recipe]+=1
    end

    card_hash.max_by {|k,v| v}
    # binding.pry
    # popular.map {|card| card.rating}
  end

  def users
    RecipeCard.all.select do |card|
      card.recipe == self
    end.map {|card| card.users}

  end

  def ingredients
    RecipeIngredient.all.select do |rec_ing|
      rec_ing.recipe == self
    end.map {|e| e.ingredient}
  end

  def allergens

  end

  def add_ingredients(ingredients)
    ingredients.each do |ingredient|
      RecipeIngredient.new(ingredient,self)
    end
  end

end
