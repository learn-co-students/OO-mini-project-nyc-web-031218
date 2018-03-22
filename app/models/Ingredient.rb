
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


  def self.most_common_allergen
     self.all.allergen.mode
      end

end
