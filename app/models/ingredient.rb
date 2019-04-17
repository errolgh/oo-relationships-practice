require 'pry'
class Ingredient

attr_reader(:name, :dessert, :calories)

@@all = []

  def initialize(name, dessert, calories)
    @name = name
    @dessert = dessert
    @calories = calories
    @@all << self
  end

  def self.all
    # should return an array of all ingredients
    @@all
  end

  def bakery
    self.dessert.bakery
    # should return the bakery object for the bakery that uses that ingredient
  end
  #
  # def self.find_all_by_name(ingredient)
  #   # should take a string argument return an array of all ingredients that include that string in their name
  # end
  #
  # def self.find_all_by_name(name)
  #     # might return ['chocolate sprinkles', 'chocolate mousse', 'chocolate']
  #     # make sure you aren't just looking for exact matches (like 'chocolate' == 'chocolate')
  # end

end
