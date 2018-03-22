class User

  attr_reader :name
  # attr_reader :recipe_cards

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    # @recipe_cards = []
  end

  def self.all
    @@all
  end

  def add_recipe_card(recipe, date, rating)
    new_recipe_card = RecipeCard.new(self, recipe, date, rating)
    # @recipe_cards << new_recipe_card
  end

end
