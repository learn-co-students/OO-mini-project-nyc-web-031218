class Allergen

  attr_accessor :allergy, :user, :ingredient
  @@all = []

  def initialize
    @@all << self
  end

  def self. all
    @@all
  end

end
