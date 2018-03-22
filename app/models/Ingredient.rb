class Ingredient

  @@all = []

  attr_accessor :user_allergens

  def self.all
    @@all
  end

  def initialize
    @@all << self
  end

  def self.most_common_allergen
    max = 0
    most_common_allergen = nil
    Allergen.all.each do |allergen|
      if allergen.ingredient.count > max
        max = allergen.ingredient.count
        most_common_allergen = allergen.ingredient
      end
    end
    most_common_allergen
  end

end
