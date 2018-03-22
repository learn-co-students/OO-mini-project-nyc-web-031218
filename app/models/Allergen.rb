class Allergen

  attr_accessor :user, :ingredient
  @@all = []

  def initialize (user, ingredient)
    @user = user
    @ingredient = ingredient
    @@all << self
  end

  def Allergen.all
    @@all
  end

end
