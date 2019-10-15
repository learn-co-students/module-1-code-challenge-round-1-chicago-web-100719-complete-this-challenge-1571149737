class Review
  attr_reader :restaurant, :customer, :ratings, :contents
  @@all = []

  def initialize(restaurant, customer, ratings, contents)
    @restaurant = restaurant
    @customer = customer
    @ratings = ratings
    @contents = contents
    @@all << self
  end

  def self.all
    @@all
  end

  def rating
    @@all.collect {|ratings| ratings.restaurant == self}
  end

  def content
    @@all.collect {|contents| contents.restaurant == self}
  end
end

