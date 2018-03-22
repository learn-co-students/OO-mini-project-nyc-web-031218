 class Recipe

   attr_accessor :name, :recipecard, :users, :ingredient
   @@all = []

   def initialize(name)
     @name = name
     @users = []
     @ingredients = []
     @@all << self
   end

   def self.all
     @@all
   end

   def self.most_popular
     max_recipe = ""
     max_recipe_count = 0
     self.all.each do |recipe|
       if recipe.users.count > max_recipe_count
         max_recipe_count = recipe.users.count
         max_recipe = recipe
       end
     end
     max_recipe
   end




 end
