class Ingredient
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_common_allergen
    allergy_hash={}
    Allergen.all.each do |allergy|
      allergy_hash[allergy.ingredient] ||=0
      allergy_hash[allergy.ingredient]+=1
    end

    allergy_hash.max_by {|k,v| v}

  end

end
