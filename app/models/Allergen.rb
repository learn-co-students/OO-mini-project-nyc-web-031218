class Allergen
  ALL = []

  attr_reader :user, :ingredient

  def initialize(user, ingredient)
    @user = user
    @ingredient = ingredient
    ALL << self
  end

  def self.all
    ALL
  end

  def ingredient
    @ingredient
  end
end
