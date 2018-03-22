class Ingredient
  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self 
  end

  def self.most_common_allergen
    frequency_hash = Allergen.all.inject(Hash.new(0)) do |hash, allergen|
      hash[allergen.ingredient] += 1; hash
    end
    frequency_hash.max_by{|k,v| v}
  end

  def self.all
    @@all
  end
end
