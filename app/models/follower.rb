require 'pry'

class Follower

  @@all = []

  # returns an Array of all the followers
  def self.all
    @@all
  end

  # takes an Integer argument that is an age and returns an Array of followers who are the given age or older
  def self.of_a_certain_age(age)
    @@all.select do |element|
      element.age >= age
    end
  end

  attr_accessor :name, :age, :life_motto, :cults

  def initialize(name, age, life_motto)
    @name = name
    @age = age
    @life_motto = life_motto
    @cults = []
    @@all << self
  end

  # takes in an argument of a Cult instance and adds this follower to the cult's list of followers
  #OR
  #...adds this cult to the follower's list of cults
  # samantha.join_cult(satans_brood)
  def join_cult(cult, date)
    Blood_Oath.new(self, cult, date)
  end

end