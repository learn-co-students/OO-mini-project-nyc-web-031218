class RecipeIngredient

  attr_accessor :ingredient, :recipe
  @@all = []

  def initialize (ingredient, recipe)
    @ingredient = ingredient
    @recipe = recipe
    @@all << self
  end

  def RecipeIngredient.all
    @@all
  end


end
