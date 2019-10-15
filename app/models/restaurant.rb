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
    Review.all.select {|review| review.restaurant == self}
  end

  def customers
   customers = self.reviews {|review| review.customer}
   customers.uniq
  end

  def average_star_rating
    ratings = self.reviews.collect {|review| review.rating}
    ratings.sum/ratings.count
  end

  def longest_review
    contents = self.reviews.collect{|review| review.content}
    contents.max {|content| content.length}
  end

  def self.find_by_name(name)
    self.all.find(name) {|restaurant| restaurant.name == name}
  end


end
