class Ingredient
  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.most_common_allergen
    ingr = Allergen.allergen_ingredients
    counts = Hash.new(0)
    ingr.each { |i| counts[i] += 1}
    counts.max_by {|k,v| v}[0]
  end
end
