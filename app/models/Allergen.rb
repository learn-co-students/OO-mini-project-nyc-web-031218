class Allergen
  @@all = []

  def initialize(argument)
    @@all << self
  end

  def self.all
    @@all
  end
end
