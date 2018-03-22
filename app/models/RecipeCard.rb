class RecipeCard
  attr_reader :user, :recipe, :rating, :date

  ALL = []

  def initialize(user, recipe, rating, date)
    @user = user
    @recipe = recipe
    @rating = rating
    @date = date
    ALL << self
  end

  def self.all
    ALL
  end

  def recipe
    @recipe
  end

  def user
    @user
  end

  def rating
    @rating
  end

  def date
    @date
  end
end
