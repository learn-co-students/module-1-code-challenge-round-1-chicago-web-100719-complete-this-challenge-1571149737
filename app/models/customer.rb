class Customer
  attr_reader :first_name, :last_name
  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def add_review(restaurant, content, rating)
    Customer.new(self, restaurant, content, rating.to_i(1..5))
  end

  #turn into numbers
  def num_reviews
    Review.select {|number_reviewed| numbered_review == self}.count
  end

  def restaurants
    restaurants_review = Restaurant.all.select {|restaurants_reviewed| restaurants_reviewed.restaurant == self}
    restaurants_review.map {|restaurants_reviewed| restaurants_reviewed.restaurant}
  end

  def self.find_by_name(name)
    full_name.find{|names| full_name == self}
  end

  def self.find_all_by_first_name(name)
    @first_name.find {|name| first_name == self}
  end

  def self.all_names
    @@all.full_name
  end
end