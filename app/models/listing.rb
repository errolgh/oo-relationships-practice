require 'pry'
class Listing

attr_reader(:city)

@@all = []

  def initialize(city)
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def guests
    # returns an array of all guests who have stayed at a listing
    Guest.all.select {|guest| guest.listing == self}
  end

  def trips
    # returns an array of all trips at a listing
    #get a list of ALL TRIPS
    #SELECT only the trips of a particular listing
    Trip.all.select do |trip|
      trip.listing == self
    end
  end

  def trip_count
    # returns the number of trips that have been taken to that listing
    trips.count
  end

  def self.find_all_by_city(city)
# takes an argument of a city name (as a string) and returns all the listings for that city
    Listing.all.select {|listing| listing.city == city}
  end

  def self.most_popular ###HELP HERE###
    # finds the listing that has had the most trips
    #First we need to iterate over all the trips
    # Trip.all.select {|trip| trip.listing  == self}
    #what is self here? will we return a list of trips of a particular instance of listing to find the listing that occurs the most times? or are we referencing something else because it's a class method?
    #we might need a couple temporary variables and start with nil as a value for the listing associated with the most trips, comparing something on each iteration
    most_popular_listing_value = 0
    Listing.all.each {|listing|
      if listing.trip_count > most_popular_listing_value
        #if this particular listings trip count is higher than the current most popular listing value, then
        most_popular_listing_value = listing.trip_count
      else
        listing
        #reset most_popular_listing_value's value to THIS iteration's (or this instance of listing's) trip count value. At this point .each will evaluate the next listing's trip count and reset the value for most_popular_listing_value's value until we've iterated over the entire data set.
      end
    }





    # hash = Hash.new(0)
    # # => hash
    # # => {}
    # Listing.all.each {|ele| hash[ele.city]+=1}
    # return hash.sort_by{|k,v| v}.last[0]

  end

end
