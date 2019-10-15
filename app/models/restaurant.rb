class Restaurant
  attr_reader :name, :rating 
  @@all = []

  def initialize(name,rating)
    @name = name
    @rating = rating
    @@all << self
  end
def self.all
  @@all
end
def customers
  Review.all.uniq {|review| review.customer == self}
end 
def reviews
  Review.all.select {|review| review.restaurant == self}
end 
def average_star_rating 

end 
def longest_review
  Review.all.map {|review| review.lenght}
end 
def find_by_name (name)
  Restaurant.all.select {|name| name.restaurant == self}
  restaurant
end 
end 



