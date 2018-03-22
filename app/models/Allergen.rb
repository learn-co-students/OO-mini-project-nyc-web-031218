class Allergen
  @@all = []

  attr_accessor :user, :ingredient

  def initialize(user, ingredient)
    @user = user
    @ingredient = ingredient
    @@all << self
  end

  def self.all
    @@all
  end

  def self.allergen_ingredients
    @@all.map do |a|
      a.ingredient
    end
  end
end
