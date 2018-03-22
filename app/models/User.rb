
  class User

    attr_reader :name, :recipes
    @@all = []

    def initialize(name)
      @name = name
      @recipes =[]
      @@all << self
      @count = 0
    end

    def self.all
      @@all
    end

    def self.count
      @@count
    end

    def add_recipe_card(recipe, rating, date)
      rc = Recipecard.new(rating, date)
      rc.user = self
      rc.recipe = recipe
      @recipes << recipe
      recipe.users << self
      @count += 1
    end


    def top_three_recipes
      user_recipe_cards = []

      Recipecard.all.each do |rc|
        if rc.user == self
          user_recipe_cards << rc
        end
      end

      #user_recipe_cards is an array of all recipe cards
      #for this user
      user_recipe_cards

      user_recipe_cards.each do |rc|

      end

      #user_recipecards => [recipe cards that belong to user]

      #[Pizza, Pasta, Salad]
      # self.recipes.each do |recipe|
      #
      #
      # end


    end






















  end
