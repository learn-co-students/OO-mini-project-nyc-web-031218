class RecipeIngredient

  @@all = []

  attr_accessor :ingredient, :recipe

  def initialize
    @@all << self
  end


  def self.all
    @@all
  end

end
