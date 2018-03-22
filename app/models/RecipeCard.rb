class RecipeCard
  attr_accessor :date, :user, :recipe, :rating
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
