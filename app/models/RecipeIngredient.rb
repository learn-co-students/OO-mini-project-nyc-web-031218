class RecipeIngredient

  @@all = []

  attr_accessor :ingredient, :recipe

  def initialize(recipe, ingredient)
    @@all << self
    @recipe = recipe
    @ingredient = ingredient
  end

  def self.all
    @@all
  end

end
