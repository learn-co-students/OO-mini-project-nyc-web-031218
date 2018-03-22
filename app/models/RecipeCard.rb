class RecipeCard
  @@all = []

  attr_accessor :date, :rating, :user, :recipe

  def initialize(user, recipe, date = Time.new, rating)
    @@all << self
    @user = user
    @date = date
    @rating = rating
    @recipe = recipe
  end

  def self.all
    @@all
  end
end
