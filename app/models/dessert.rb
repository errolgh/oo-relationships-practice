require 'pry'
class Dessert

attr_reader(:name, :bakery)

@@all = []

  def initialize(name, bakery)
    @name = name
    @bakery = bakery
    @@all << self
  end


  def self.all
    # should return an array of all desserts
    @@all
  end

  def ingredients
    Ingredient.all.select {|ingredient| ingredient.dessert == self}
    # should return an array of ingredients for the dessert
  end

  def calories
    # should return a number totaling all the calories for all the ingredients included in that dessert
    # Ingredient.all.select do |ingredient| ingredient.calories == self
    self.ingredients.map {|ingredient| ingredient.calories}.reduce(0,:+)
  end
end
