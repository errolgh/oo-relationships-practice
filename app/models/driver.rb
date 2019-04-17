class Driver

attr_reader (:name)

@@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def passengers
    Driver.all.select {|driver| driver.passenger == self}
  end

  def rides
#returns all rides a driver has made
  Ride.all.select {|ride| ride.driver == self}
  end

  def self.mileage_cap(distance)

  end


end
