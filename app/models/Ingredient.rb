class Ingredient

  @@all = []

  attr_accessor :user_allergens, :is_allergen, :name

  def self.all
    @@all
  end

  def initialize(name)
    @@all << self
    @name = name
    @is_allergen = false
  end

  def self.most_common_allergen
    max_ingredient = nil
    max_count = 0
    uniq_ingredient = Allergen.all.map do |al|
      al.ingredient
    end.uniq

    uniq_ingredient.each do |ingredient|
      count = 0
      Allergen.all.each do |al|
        if al.ingredient == ingredient
          count += 1
        end
      end
      if count > max_count
        max_count = count 
        max_ingredient = ingredient
      end
    end
    max_ingredient
  #
  #   max = 0
  #   most_common_allergen = nil
  #   Allergen.all.each do |allergen|
  #     if allergen.ingredient.length > max
  #       max = allergen.ingredient.length
  #       most_common_allergen = allergen.ingredient
  #     end
  #   end
  #   most_common_allergen
  # end
end

end
