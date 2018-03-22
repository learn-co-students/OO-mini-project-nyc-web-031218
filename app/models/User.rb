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

  def add_recipe_card(recipe, date = Time.now, rating)
    RecipeCard.new(self, recipe, date, rating)
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
    top_three = ratings.max_by(3) {|k,v| v}
    top_three.collect { |h| h[0] }

  end

  def most_recent_recipe
    sorted_by_date = self.find_user_recipe_cards.sort_by do |recipe_card|
      recipe_card.date
    end
    sorted_by_date[-1]
  end

  def declare_allergen(ingredient)
    Allergen.new(ingredient, self)
  end

  def find_users_allergens
    Allergen.all.select do |allergen|
      allergen.user == self
    end
  end

  def allergens
    self.find_user_allergens.map do |allergen|
      allergen.ingredient
    end
  end

end
