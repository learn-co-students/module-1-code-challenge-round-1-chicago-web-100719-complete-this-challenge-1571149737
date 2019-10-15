class Customer
  attr_reader :first_name, :last_name

  @@all = []

    def initialize(first_name, last_name)
      @first_name = first_name
      @last_name  = last_name
      self.class.all << self
    end

    def full_name
      "#{first_name} #{last_name}"
    end

    def add_review(restaurant,content,rating)
      new_review = Review.all.push("")
    end

    def num_reviews
      Reviews.all.length
    end

    def restaurants
      
    end



    def self.all
      @@all
    end

  
end
