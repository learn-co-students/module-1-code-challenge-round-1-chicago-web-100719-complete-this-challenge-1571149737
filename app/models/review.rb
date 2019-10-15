class Review
attr_reader :customer, :restaurant, :content
attr_accessor :rating #customers might want to change their ratings
 @@all = []

    def initialize(customer, restaurant, content, rating)
        @customer = customer
        @restaurant = restaurant
        @content = content
        @rating = rating
        @@all << self
    end

    def self.all
        @@all
    end

  
end

