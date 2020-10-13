require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console



#puts "Mwahahaha!" # just in case pry is buggy and exits

satans_brood = Cult.new("Satan's Brood", "Florida", 2015, "The Darke Lorde commands it")

iphone_users = Cult.new("iPhone Users", "Cupertino", 2007, "We hate green text")

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
ricky = Follower.new("Ricky", 45, "Satan is Life")
sabrina = Follower.new("Sabrina", 30, "I heart Lucifer")
# puts samantha.name
# puts samantha.age
# puts samantha.life_motto

puts "Joining Follower to Cult"
puts "--------------------"
samantha.join_cult(satans_brood, "2015-06-06")
ricky.join_cult(satans_brood, "2015-06-13")


puts "Recruited to Cult"
puts "--------------------"
satans_brood.recruit_follower(sabrina, "2017-09-02")
iphone_users.recruit_follower(samantha, "2015-07-06")

puts "Cult Population"
puts "--------------------"
#puts satans_brood.cult_population

puts "Follower Cults"
puts "--------------------"
#puts "samantha.cults = #{samantha.cults}"

puts "Of certain age"
puts "--------------------"
#puts Follower.of_a_certain_age(30).inspect

puts "Find by Location"
puts "------------------"


binding.pry