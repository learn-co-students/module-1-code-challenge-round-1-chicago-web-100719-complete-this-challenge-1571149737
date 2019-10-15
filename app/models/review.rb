class Review

    attr_accessor :customer, :restourant

    @@all = []

    def initialize(customer, restaurant)
        @customer = customer
        @restaurant = restaurant
        @@all << self
    end

    def self.all
        @@all
    end
  
end

