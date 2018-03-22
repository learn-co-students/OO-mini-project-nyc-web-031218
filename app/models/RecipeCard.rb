class RecipeCard
  @@all = []

  attr_reader :recipe, :date, :rating, :user

  def initialize(user, recipe, date, rating)
    @@all << self
    @user = user
    @recipe = recipe
    @date = date
    @rating = rating
  end

  def self.all
    @@all
  end
end
