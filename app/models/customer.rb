class Customer
  attr_reader :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def self.all
    @@all
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant, content, rating)
    Review.new(content, rating, self, restaurant)
  end

  def num_reviews
    total = Review.all.select do |r|
      r.customer == self
    end
    total.size
  end

  def restaurants
   total = Review.all.select do |r|
      r.restaurant == self 
    end
    total.uniq
  end



end
