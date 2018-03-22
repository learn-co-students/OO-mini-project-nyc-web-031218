
  class User

    attr_reader :name
    @@all = []

    def initialize(name)
      @name = name
      @@all << self
      # @count = 0
      @last_added_recipe = nil
    end

    def self.all
      @@all
    end

    # def self.count
    #   @@count
    # end

    def add_recipe_card(recipe, rating, date)
      Recipecard.new(rating, date, self, recipe)

      # @count += 1
      @last_added_recipe = recipe

    end

    #return this user's recipe cards
    def recipe_cards
      Recipecard.all.select do |rc|
        rc.user == self
      end
    end

    #return this user's recipes
    def recipes
      recipe_cards.map do |rc|
        rc.recipe
      end
    end

    def declare_allergen(ingredient)
      Allergen.new(self, ingredient)

    end

    def allergens
      Allergen.all.select do |allergen|
        allergen.user == self
      end
    end


    def top_three_recipes
      #this user's recipe cards in an array
      top_three_rc = recipe_cards.sort_by do |rc|
        rc.rating
      end.reverse.slice(0,3)

      #extract recipe objects
      top_three_rc.map do |rc|
        rc.recipe
      end

    end



    def most_recent_recipe
      @last_added_recipe

    end






















  end
