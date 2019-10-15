require 'pry'

class Restaurant
  attr_reader :name,:resturants 
  @@all = []

  def initialize(name)
    @name = name
    @resturants = resturants
    @@all << self
  end

end
