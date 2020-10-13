require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console



puts "Mwahahaha!" # just in case pry is buggy and exits

satans_brood = Cult.new("Satan's Brood", "Florida", 2015, "The Darke Lorde commands it")

#puts satans_brood.name
#puts satans_brood.slogan

# takes a String argument that is a location and returns an Array of cults that are in that location
#puts Cult.find_by_location("Florida")

# takes a String argument that is a name and returns a Cult instance whose name matches that argument
#puts Cult.find_by_name("Satan's Brood")

# takes an Integer argument that is a year and returns all of the cults founded in that year
#puts Cult.find_by_founding_year(2015)

puts "Making new followers"
puts "--------------------"
samantha = Follower.new("Samantha", 19, "I dunno, sounds fun!")
puts samantha.name
puts samantha.age
puts samantha.life_motto


#binding.pry