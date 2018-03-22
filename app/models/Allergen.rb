class Allergen

  @@all = []

  attr_accessor :user, :ingredient

  def initialize(user, ingredient)
    @@all << self
    @user = user
    @ingredient = ingredient
  end

  def self.all
    @@all
  end

end
