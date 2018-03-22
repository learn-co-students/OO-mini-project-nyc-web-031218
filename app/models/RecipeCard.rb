class RecipeCard
  attr_reader :user, :recipe, :rating, :date

  ALL = []

  def initialize(user, recipe, rating, date)
    @user = user
    @recipe = recipe
    @date = date 
    @rating = rating
    ALL << self
  end

  def recipe
    @recipe
  end

  def user
    @user
  end

  def date
    @date
  end

  def self.all
    ALL
  end

  def rating
    @rating
  end

end
