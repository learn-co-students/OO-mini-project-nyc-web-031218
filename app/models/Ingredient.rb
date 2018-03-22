class Ingredient

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_common_allergen
    allergen_counter_hash = {}
    common_allergen = nil
      @@all.each do |ingredient|
        allergen_counter = 0
        Allergen.all.each do |allergen|
          if allergen.ingredient == ingredient
            allergen_counter += 1
            allergen_counter_hash[ingredient] = allergen_counter
          end
        end
      end
      allergen_counter_hash.each do |key, value|
      if value == allergen_counter_hash.values.sort.last
        common_allergen = key
      end
      end
      common_allergen
  end

end
