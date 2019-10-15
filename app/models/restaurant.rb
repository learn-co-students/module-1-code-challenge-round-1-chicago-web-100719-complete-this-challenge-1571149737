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
    Review.all.select { |r| r.restaurant == self }
  end

  def customers
    # returns array with possible duplicates
    non_unique = self.reviews.collect { |r| r.customer }
    non_unique.uniq 
  end

  def average_star_rating
    ratings = self.reviews.collect { |r| r.rating }
    ratings.sum / ratings.count
  end

  def longest_review
    content_array = self.reviews.collect { |r| r.content }
    content_array.max_by { |c| c.length }
  end

  def self.find_by_name(name)
    self.all.find { |r| r.name == name }
  end
end
