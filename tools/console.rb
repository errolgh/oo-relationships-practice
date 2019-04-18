require_relative '../config/environment.rb'
require 'pry'
def reload
  load 'config/environment.rb'
end









#BAKERIES
profx = Bakery.new("Professor X's Laboratory")
insomnia = Bakery.new("Insomnia Cookie")
bruno = Bakery.new("Bruno's Baked Goods")

#DESSERT
ppg = Dessert.new("Powerpuff Girls", profx)
mojo = Dessert.new("Mojo Jojo Cookies", profx)
chocolate_cake = Dessert.new("Chocolate Cake", bruno)
spice_cookie = Dessert.new("Spice Cookie", insomnia)

#INGREDIENTS
chocolate = Ingredient.new("Chocolate", ppg, 300)
chocolate_mousse = Ingredient.new("Chocolate Mousse", ppg, 500)
sugar = Ingredient.new("Sugar", chocolate_cake, 500)
spice = Ingredient.new("Spice", chocolate_cake, 50)
flour = Ingredient.new("Flour", spice_cookie, 20)
chemx = Ingredient.new("Chemical X", ppg, 1000)
banana = Ingredient.new("Banana", mojo, 750)



# chocolate.bakery


puts "TESTS"
puts "should return an array of desserts the bakery makes?"
puts Dessert.all.include?(ppg)
profx.ingredients == [chocolate, chemx]
binding.pry
puts "END OF TESTS"















#LISTING
# phoenix = Listing.new("Phoenix")
# vegas = Listing.new("Las Vegas")
# hamburg = Listing.new("Hamburg")
# #GUEST
# carmen = Guest.new("Carmen Sandiago")
# waldo = Guest.new("Waldo")
# alec = Guest.new("Alec Baldwin")
# krysten = Guest.new("Krysten Ritter")
# #TRIP
# windy_trip = Trip.new(phoenix, carmen)
# biz_trip = Trip.new(hamburg, alec)
# short_trip = Trip.new(vegas, krysten)
# nerd_trip = Trip.new(hamburg, waldo)
# nerdiest_trip = Trip.new(phoenix, waldo)
# yet_another_nerd_trip = Trip.new(phoenix, waldo)
#
# puts "- AirBnb TESTS-"
# puts "#LISTING METHODS"
# puts "1. guests"
# puts "Array of all guests who have stayed at a listing?"
# # puts short_trip.guests.include?(krysten)
# puts "2. trips"
# puts "Array of all trips at a listing?"
# puts phoenix.trips.include?(windy_trip)
# puts "3. trip_count"
# puts "Number of trips that have been taken to that listing?"
# puts hamburg.trip_count == 2
# puts "4. .find_all_by_city"
# puts "All the listings for that city?"
# puts Listing.find_all_by_city("Hamburg").include?(hamburg)
# puts "5. .most_popular"
# puts "Returns the listing that has the most trips?"
# puts Listing.most_popular == phoenix
#
# puts "#GUEST METHODS"
# puts "1. listings"
# puts "Returns an array of all listings where a guest has stayed?"
# puts false # carmen has stayed in phoenix .include?(phoenix)#
# puts "2. trips"
# puts "Returns an array of all trips a guest has made?"
# puts hamburg.trips.include?(nerd_trip)
# puts "3. trip_count"
# puts "returns the number of trips a guest has taken"
# puts alec.trip_count == 1
# puts "4. .pro_traveller"
# puts  "returns an array of all guests who have made over 1 trip"
# puts Guest.pro_traveller.include?(waldo)
# puts "5. .find_all_by_name"
# puts "takes an argument (name) and returns the all guests with that name?"
# puts Guest.find_all_by_name("Alec Baldwin").include?(alec)
#
# puts "*********End of tests*********"
#
#
# puts "***LYFT TESTS***"
# # DRIVERS
# dale = Driver.new("Dale Earnhardt Jr.")
# danica = Driver.new("Danica Patrick")
# speed = Driver.new("Speed Racer")
# # PASSENGER
# rosa = Passenger.new("Rosa Parks")
# maynard = Passenger.new("Maynard James Keenan")
# bill = Passenger.new("Bill Gates")
# #RIDE
# short_trip = Ride.new(dale, rosa, 502)
# med_trip = Ride.new(danica, maynard, 9)
# long_trip = Ride.new(speed, bill, 220)



#there is a lecture on puts testing. watch it before asking about it.
