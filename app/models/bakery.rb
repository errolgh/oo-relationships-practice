require 'pry'
class Bakery

attr_reader(:bakery_name)

@@all = []

  def initialize(bakery_name)
    @bakery_name = bakery_name
    @@all << self
  end

  def self.all
      # should return an array of all bakeries
    @@all
  end

  # should return an array of ingredients for the bakery's desserts
  def ingredients
    Ingredient.all.select do |ingredient|
       ingredient.bakery == self
     end


  end

  def desserts #TESTED
    # should return an array of desserts the bakery makes
    Dessert.all.select do |dessert|
      dessert.bakery == self
      # binding.pry
    end
  end

  def average_calories
    # should return a number totaling the average number of calories for the desserts sold at this bakery
  
    self.desserts.map do |dessert|
      dessert.calories
  end
  end
  #
  # def shopping_list
  #   # should return a string of names for ingredients for the bakery
  # end
end


# ingredients.all.select


# desserts_bakers = [deserrt1, dessert2, dessert3]
