class RecipeIngredient

attr_reader :recipe, :ingredient

@@all = []

def initialize(recipe, ingredient)
  @ingredient = ingredient
  @recipe = recipe
  @@all << self
end

def self.all
  @@all
end

end
