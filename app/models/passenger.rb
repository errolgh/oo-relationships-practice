require 'pry'
class Passenger

attr_reader(:name)

@@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
#returns an array of all passengers
    @@all
  end

  def drivers
# returns all drivers a passenger has ridden with
  Driver.all.select {|driver| driver.passenger == self}
  end

  def rides
# returns all rides a passenger has been on
    Ride.all.select {|ride| ride.passenger == self}
  end

  def total_distance
    all_rides = Ride.all.select {|ride| ride.passenger == self}
    all_rides.map {|ride| ride.distance}.reduce(:+)
  # should calculate the total distance the passenger has travelled with the service
  #We need all the rides by a specfic passenger
  #then we need the distance value from all of their all_rides
  #then collect the sum of all the distances (.reduce(:+))
  end


end
