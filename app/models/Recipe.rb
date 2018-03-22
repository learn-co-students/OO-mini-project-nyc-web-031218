 class Recipe

   attr_accessor :name, :recipecard, :user
   @@all = []

   def initialize(name)
     @name = name
     @all < self
   end

   def self.all
     @@all
   end


 end
