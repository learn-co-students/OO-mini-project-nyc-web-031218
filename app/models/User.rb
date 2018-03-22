
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
      @all
    end

    def self.count
      @@count
    end

    def add_recipe_card(recipe, date, rating)
      rc = Recipecard.new(date, rating)
      rc.user = self
      rc.recipe = recipe
      @recipes << recipe
      recipe.users << self
      @count += 1
    end


    # def recipes
    #   recipecard collect do |recipecard|
    #     recipecard.recipe
    #   end
    # end

  end
