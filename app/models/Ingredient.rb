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
      hash[ingredient.name] += 1
    end
    i = hash.values[0]
    j = 0
    hash.each_with_index do |(name, count), index|
      if count > i
        j = index
        i = count
      end
    end
    allr = Allergen.all.find do |allergen|
      allergen.ingredient.name == hash.keys[j]
    end
    allr.ingredient
  end

end
