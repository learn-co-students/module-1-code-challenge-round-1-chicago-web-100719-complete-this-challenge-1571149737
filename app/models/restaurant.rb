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
  #Didn't get here
  # def customers
  #   Customers.self.all.uniq
  # end

  # def reviews
  #   Review.self.all.uniq
  # end

  # def average_star_rating

  # end

  # def longest_review
  #   Review.self.length
  # end

  def self.find_by_name(name)
    name.find {|x| name == self}
  end
end
