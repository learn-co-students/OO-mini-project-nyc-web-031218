class RecipeCard

  @@all = []

  attr_accessor :user, :recipe, :date, :rating

  def initialize(user, recipe, date, rating)
    @@all << self
    @user = user
    @recipe = recipe
    @date = date
    @rating = rating
    recipe.count += 1
  end

  def self.all
    @@all
  end



end

#Pry.start
