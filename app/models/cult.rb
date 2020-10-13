require 'pry'

class Cult

  @@all = []

  def self.all
    @@all
  end

  # takes a String argument that is a name and returns a Cult instance whose name matches that argument
  def self.find_by_name(name)
    @@all.find do |element|
      element.name == name
    end
  end

  # takes a String argument that is a location and returns an Array of cults that are in that location
  def self.find_by_location(location)
    @@all.select do |element|
      element.location == location
    end
  end

  # takes an Integer argument that is a year and returns all of the cults founded in that year
  def self.find_by_founding_year(year)
    @@all.select do |element|
      element.founding_year == year
    end
  end

  attr_accessor :name, :location, :founding_year, :slogan, :cult_pop

  def initialize(name, location, founding_year, slogan)
    @name = name
    @location = location
    @founding_year = founding_year
    @slogan = slogan
    @cult_pop = []
    @@all << self
    puts "* Adding to Cult.all: #{self.name}"
  end

  # takes in an argument of a Follower instance and adds them to this cult's list of followers
  def recruit_follower(follower, date)
    Blood_Oath.new(follower, self, date)
  end

  # returns an Integer that is the number of followers in this cult
  def cult_population
    @cult_pop.length
  end

end