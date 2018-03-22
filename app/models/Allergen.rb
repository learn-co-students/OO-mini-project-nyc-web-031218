class Allergen
  @@all = []
  attr_reader :ingredient, :user

  def initialize(ingredient, user)
    @@all << self
    @ingredient = ingredient
    @user = user
  end

  def self.all
    @@all
  end


end
