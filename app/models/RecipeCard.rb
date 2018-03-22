class RecipeCard
  attr_accessor :recipe, :date, :user, :rating
  @@all = []

  def initialize(recipe, date, rating)
    @recipe = recipe
    @date = date
    @rating = rating
    @@all << self
  end

  def self.all
    @@all
  end
end
