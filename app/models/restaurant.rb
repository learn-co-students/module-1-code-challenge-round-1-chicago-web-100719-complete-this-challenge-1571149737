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

  def customers
    total = Review.all.select do  |r|
    r.customer == self
  end
  total.uniq
  end

  def reviews
    Review.all.select do |r|
      r.restaurant == self
  end
end

  def average_star_rating
  star = Review.all.map do  |r|
  r.rating
    end
    star.sum / star.length
  end

  def longest_review
    longest = Review.all.select do |r|
      r.restaurant == self
    end
    longest.max {|a, b| a.size <=> b.size}
  end


end
