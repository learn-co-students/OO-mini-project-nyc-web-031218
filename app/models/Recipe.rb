class Recipe
  @@all = []

  attr_reader :name

  def initialize(name)
    @@all << self
    @name = name
  end

  def self.all
    @@all
  end

  # def self.most_popular
  #   counts_hash = {}
  #   RecipeCard.all.each do |
  #
  # end

end

# RecipeCard.all select do |recipe_card|
#   recipe_card.recipe = self.recipe
# end
