require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

puts "--------------------"
puts "* Making new cults"
puts "--------------------"
satans_brood = Cult.new("Satan's Brood", "Florida", 2015, "The Darke Lorde commands it")
iphone_users = Cult.new("iPhone Users", "Cupertino", 2007, "We hate green text")

puts "--------------------"
puts "* Cult Details"
puts "--------------------"
puts satans_brood.name
puts satans_brood.location
puts satans_brood.founding_year
puts satans_brood.slogan

puts "--------------------"
puts "* Making new followers"
puts "--------------------"
samantha = Follower.new("Samantha", 19, "I dunno, sounds fun!")
ricky = Follower.new("Ricky", 45, "Satan is Life")
sabrina = Follower.new("Sabrina", 30, "I heart Lucifer")

puts "--------------------"
puts "* Follower Details"
puts "--------------------"
puts samantha.name
puts samantha.age
puts samantha.life_motto
puts samantha.cults

puts "--------------------"
puts "* Follower joining cult"
puts "--------------------"
samantha.join_cult(satans_brood, "2015-06-06")
ricky.join_cult(satans_brood, "2015-06-13")

puts "--------------------"
puts "* Cult recruiting follower"
puts "--------------------"
satans_brood.recruit_follower(sabrina, "2017-09-02")
iphone_users.recruit_follower(samantha, "2015-07-06")

puts "--------------------"
 puts "* Cult Population"
 puts "--------------------"
 puts satans_brood.cult_population

 puts "--------------------"
 puts "* Follower Cults"
 puts "--------------------"
  puts "samantha.cults = #{samantha.cults}"

  puts "--------------------"
puts "* Of certain age"
puts "--------------------"
puts Follower.of_a_certain_age(30).inspect

puts "--------------------"
puts "* Find by _______"
puts "------------------"
puts Cult.find_by_founding_year(2015)
puts Cult.find_by_location("Florida")
puts Cult.find_by_name("Satan's Brood")

puts "--------------------"
puts "* Cult.all"
puts "------------------"
puts Cult.all

puts "--------------------"
puts "* Folower.all"
puts "------------------"
puts Follower.all

puts "--------------------"
puts "* BloodOath.all"
puts "------------------"
puts BloodOath.all

puts "--------------------"
puts "* BloodOath Initiation Date"
puts "------------------"
puts 

#binding.pry