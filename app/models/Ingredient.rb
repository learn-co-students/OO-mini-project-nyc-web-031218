class Ingredient
  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_common_allergen
    ing = Allergen.all.map do |allergen|
      allergen.ingredient
    end
    hash = Hash.new(0)
    ing.each do |ingredient|
      hash[ingredient] += 1
    end
    ing.max_by do |allergen|
      hash[allergen]
    end
  end

end
