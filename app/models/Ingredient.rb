
class Ingredient

  @@all = []

   attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.most_common_allergen
    # ["nuts", "nuts", "water"]
    # { nuts => 2, water => 1}
    ingr = Allergen.allergen_ingredients
    counts = Hash.new(0)
    ingr.each { |i| counts[i] += 1}
    counts.max_by {|k,v| v}[0]
  end


end
