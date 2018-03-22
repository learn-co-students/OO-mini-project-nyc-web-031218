class Ingredient
  ALL = []

  attr_reader :name

  def initialize(name)
    @name = name
    ALL << self
  end

  def self.all
    ALL
  end

  def self.most_common_allergen
    count = Hash.new(0)
    most_common_count = 0

    Allergen.all.each do |allergen|
      count[allergen.ingredient] += 1
    end
    #count = {tomatoes => 3, milk =>1, beef => 1}
    most_common_ingredient = count.select do |ingredient, amount|
      if count[ingredient] > most_common_count
       most_common_count = count[ingredient]
      end
    end

    most_common_ingredient.keys[0]
  end

end
