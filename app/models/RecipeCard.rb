
 class Recipecard

   attr_accessor :recipe, :user, :rating, :date
   @@all = []

   def initialize  (rating, date, user, recipe)
     @rating = rating
     @date = date
     @user = user
     @recipe = recipe


     @@all << self
   end

   def self.all
     @@all
   end


end
