class Restaurant
  attr_reader :name
  @@all = []
  
def initialize(name)
    @name = name
    self.class.all << self
  end

def self.all
  @@all
end

def reviews
  Review.all.select {|x| x.restaurant == self}
end

def customers
  reviews.collect {|x| x.customer}.uniq
end

def average_star_rating
  values = reviews.collect {|x| x.rating}
  values.sum / values.size
end

def longest_review
  allcontent = reviews.collect {|x| x.content}
  allcontent.sort_by {|x| x.length}[-1]
end

def self.find_by_name(name)
  self.all.find {|x| x.name == name}

end

end
