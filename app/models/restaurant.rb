class Restaurant
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select {|r| r.restaurant == self}
  end

  def customers
    all_cust = reviews.collect {|r| r.customer}
    all_cust.uniq
  end

  def average_star_rating
    ratings = reviews.collect {|r| r.rating}
    ratings.sum / ratings.length
  end

  def longest_review
    long_review = self.reviews.max {|a, b| a.content.length <=> b.content.length}
    return long_review.content
    #could also do a reverse sort_by and return the first item, but time is short and this is faster!
  end

  def self.find_by_name(name)
    self.all.find {|r| r.name == name}
  end

end
