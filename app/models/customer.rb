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
    Review.new(self, restaurant, content, rating)
  end

  def num_reviews
    all = Review.all.select {|review| review.customer == self}
    all.count
  end

  def restaurants
   all = Review.all.select {|review| review.customer == self}
   restaurants = all.collect {|review| review.restaurant}
   restaurants.uniq
  end

  def self.find_by_name(name)
    self.all.find(name) {|customer| customer.first_name + customer.last_name == name.split(" ")}
  end

  def self.find_all_by_first_name(name)
    self.all.select {|customer| customer.first_name == name}
  end

  def self.all_names
    self.all.collect {|customer| customer.first_name + customer.last_name}
  end

end
