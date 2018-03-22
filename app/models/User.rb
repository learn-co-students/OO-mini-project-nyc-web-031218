  class User

    attr_reader :name, :recipe, :recipecard
    @@all = []

    def initialize(name)
      @name = name
      @recipecard = []
      @@all << self
      @count = 0
    end

    def self.all
      @all
    end

    def self.count
      @@count
    end

    def add_recipe_card(recipe, date, rating)
      rc = Recipecard.new(recipe, date, rating)
      @recipecard << rc
      @count += 1
    end

    def recipes
      @recipecard collect do |recipecard|
        recipecard.recipe
      end
    end

  end
