class Blood_Oath

  @@all = []

  # returns an Array of all the blood oaths
  def self.all
    @@all
  end

  attr_accessor :follower, :cult, :initiation_date

  def initialize(follower, cult, date)
    @follower = follower
    @cult = cult
    @initiation_date = date
    cult.cult_pop << follower
    follower.cults << cult
    @@all << self
  end

end