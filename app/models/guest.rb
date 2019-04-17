require 'pry'

class Guest

attr_reader(:name)

@@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def listings
# returns an array of ALL LISTINGS an INSTANCE OF GUEST has stayed at
    Listing.all.select do |listing|
      listing.guest == self
      # (terse code:)
      # Listing.all.select {|listing| listing.guest == self}
    end
  end

  def trips
# returns an array of ALL TRIPS an INSTANCE OF GUEST has made
    Trip.all.select {|trip| trip.guest == self}
    # binding.pry
  end

  def trip_count
#returns the number of trips a guest has taken
  self.trips.count
  end

  def self.pro_traveller ###HELP###
    #returns an array of ALL GUESTS who have made over 1 TRIP
    # @@all.select {|guest| guest.trips == self}
    #what is self in this case? how do we collect the right data that we can return all the guests who have made more than one trip?
    # hash = Hash.new(0) #COPY PASTED, I DO NOT UNDERSTAND THIS
    #   Guest.all.each {|ele| hash[ele.guest]+=1}
    Guest.all.select {|guest| guest.trip_count > 1}
  end

  def self.find_all_by_name(name)
#takes an argument of a name (as a string), returns the all guests with that name
    Guest.all.select {|guest| guest.name == name}
  end

end
