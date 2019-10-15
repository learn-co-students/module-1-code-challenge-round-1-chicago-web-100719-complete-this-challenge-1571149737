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
    Review.all.select{|r| r.restaurant == self}
  end

  def customers
    self.reviews.map{|r| r.customer}.uniq
  end

  def average_star_rating
    (self.reviews.map{|r| r.rating}.sum.to_f / self.reviews.count).round(2)
  end

  def longest_review
    self.reviews.sort_by{|r| r.content.length}.reverse[0]
  end

  def self.find_by_name(name)
    self.all.find{|r| r.name == name}
  end
end
