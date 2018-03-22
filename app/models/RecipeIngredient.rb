class RecipeIngredient
  @@all = []

  attr_reader :ingredient, :recipe

  def initialize(ingredient, recipe)
    @@all << self
    @ingredient = ingredient
    @recipe = recipe
  end

  def self.all
    @@all
  end


end
