
 class Recipecard

   attr_accessor :recipe, :user, :rating, :date
   @@all = []

   def initialize  (rating, date)
     @rating = rating
     @date = date
     @@all << self
   end

   def self.all
     @@all
   end


end
