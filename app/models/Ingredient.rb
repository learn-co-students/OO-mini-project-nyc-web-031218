class Ingredient

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_common_allergen
    #ingredient with the most users in allergens
    i_hash = {}

    Ingredient.all.each do |i|
      i_hash[i.name] = 0
    end

    #binding.pry

    Allergen.all.each do |item|
      i_hash[item.ingredient.name] += 1
    end

    highest_ingredient_name = i_hash.sort_by do |key, value|
      value
    end[-1][0]

    Ingredient.all.find do |item|
      item.name == highest_ingredient_name
    end

  end
end
