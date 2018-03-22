class RecipeIngredient
  ALL = []

  attr_accessor :recipe, :ingredient

  def initialize(recipe, ingredient)
    @recipe = recipe
    @ingredient = ingredient
    ALL << self
  end

  def self.all
    ALL
  end

  def recipe
    @recipe
  end

  def ingredient
    @ingredient
  end
end
