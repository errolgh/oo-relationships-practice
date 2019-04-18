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

  def average_calories ###HOMEWORK###
    # should return a number totaling the average number of calories for the desserts sold at this bakery
    arr_desserts_by_calories = self.desserts.map {|dessert| dessert.calories}
    num_of_desserts = arr_desserts_by_calories.count
    arr_desserts_by_calories.sum / num_of_desserts
  end

  def shopping_list ###HOMEWORK###
    # should return a string of names for ingredients for the bakery
    binding.pry
    self.ingredients.map {|ingredient| ingredient.name}.join(", ")
  end
    #I'll be using .join to turn an array into a string separated by ", "s.
end
