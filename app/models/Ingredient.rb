class Ingredient
  @@all = []

  attr_reader :name

  def initialize(name)
    @@all << self
    @name = name
  end

  def self.all
    @@all
  end

  def self.most_common_allergen
    counter_hash = {}
    Allergen.all.each do |allergen|
      if counter_hash[allergen.ingredient]
        counter_hash[allergen.ingredient] += 1
      else
        counter_hash[allergen.ingredient] = 1
      end
    end
    counter_hash.max_by {|k,v| v}[0]
  end

  def is_allergen?
    Allergen.all.select { |a| a.ingredient == self }
  end
end
