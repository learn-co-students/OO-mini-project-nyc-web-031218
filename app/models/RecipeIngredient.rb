class RecipeIngredient
  attr_accessor :recipe, :ingredient
  ALL = []

  def initialize(ingredient, recipe)
    @ingredient = ingredient
    @recipe = recipe
    ALL << self
  end

def self.all
  ALL
end

def ingredient
  @ingredient
end

def recipe
  @recipe
end


end
