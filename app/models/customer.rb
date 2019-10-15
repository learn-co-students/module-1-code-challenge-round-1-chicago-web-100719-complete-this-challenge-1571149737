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

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end

  def my_reviews
    Review.all.select { |r| r.customer == self }
  end

  def num_reviews
    self.my_reviews.count
  end

  def restaurants
    # returns restaurants with possible duplicates
    not_unique = self.my_reviews.collect { |r| r.restaurant }
    not_unique.uniq 
  end

  def self.all
    @@all 
  end

  def self.find_by_name(name)
    self.all.find { |c| c.full_name == name }
  end

  def self.find_all_by_first_name(name)
    self.all.select { |c| c.first_name == name }
  end

  def self.all_names
    self.all.collect { |c| c.full_name }
  end
end
