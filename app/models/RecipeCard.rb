class RecipeCard

  # attr_accessor :user, :recipe

  @@all = []

  def initialize(user, recipe, date = Time.now, rating = 0)
    @name = recipe.name
    @user = user
    @recipe = recipe
    @date = date
    @rating = rating
    @@all << self
  end

def self.all
  @@all
end

def date
  #should return the date of the entry
  @date
end

def rating
  #should return the rating (an integer) a user has given their entry
  @rating
end

def user
  #should return the user to which the entry belongs
  @user
end

def recipe
  #should return the recipe to which the entry belongs
  @recipe
end

end
## to sort longest walk desing a separate
#method to select specific dog's walks
#then a method to sort the longest
