
class Ingredient

  attr_accessor :name, :recipe
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  #return this ingredient's allergens
  def allergens
    Allergen.all.select do |allergen|
      allergen.ingredient == self
    end
  end


  def self.most_common_allergen
    Ingredient.all.sort_by do |ingredient|
      ingredient.allergens.count
    end.reverse.first

    # binding.pry
  end


end
