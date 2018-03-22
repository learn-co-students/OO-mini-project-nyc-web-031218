 class Recipe

   attr_accessor :name, :recipecard
   @@all = []

   def initialize(name)
     @name = name
     @@all << self
   end

   def self.all
     @@all
   end

   #return this recipe's recipe cards
   def recipe_cards
     Recipecard.all.select do |rc|
       rc.recipe == self
     end
   end

   def self.most_popular
     Recipe.all.sort_by do |recipe|
       recipe.recipe_cards.count
     end.reverse.first
   end


   def add_rc_ingredient(ingredient)
     RecipeIngredient.new(self, ingredient)
   end

   def add_ingredients(ingredients)
     ingredients.each do |ingredient|
        add_rc_ingredient(ingredient)
     end
     binding.pry
   end

   def recipe_ingredients
     RecipeIngredient.all.select do |ri|
       ri.recipe == self
       ri.ingredient
     end
     binding.pry
   end











   #most_popular returns specific name
   # def self.most_popular
   #
   #   hash = {}
   #   Recipe.all.each do |recipe|
   #     hash[recipe.name] = 0
   #   end
   #
   #   Recipecard.all.each do |rc|
   #     hash[rc.recipe.name] += 1
   #   end
   #
   #   x = hash.max_by do |key, value|
   #     value
   #   end
   #
   #   x[0]
   #
   #   binding.pry
   #
   # end




 end
