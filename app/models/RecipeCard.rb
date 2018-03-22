require 'pry'

 class Recipecard

   attr_accessor :recipe, :user, :rating, :date
   @@all = []

   def initialize (name, rating, date)
     @name = name
     @rating = rating
     @date = date
     @@all << self
   end

   def self.all
     @@all
   end


end

Pry.start
