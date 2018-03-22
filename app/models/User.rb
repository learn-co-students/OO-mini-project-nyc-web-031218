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

  def find_user_recipe_cards
    RecipeCard.all.select do |recipe_card|
      recipe_card.user == self
    end
  end

  def recipes
    self.find_user_recipe_cards.map do |recipe_card|
      recipe_card.recipe
    end
  end

  def top_three_recipes
    ratings = {}

    self.find_user_recipe_cards.each do |recipe_card|
      ratings[recipe_card.recipe] = recipe_card.rating
    end
    # binding.pry
    ratings.max_by(3) {|k,v| v}

  end

end
