require 'pry'

class Recipe

  @@all = []

  attr_accessor :ingredients, :users

  def self.all
    @@all
  end

  def initialize()
    @@all << self
    @ingredients = []
  end

  def self.most_popular

  end

  def users

  end

  def allergens

  end

  def add_ingredients(ingredients)
    ingredients.each do |ingredient|
      @ingredients << ingredient
    end
  end


end

#Pry.start
