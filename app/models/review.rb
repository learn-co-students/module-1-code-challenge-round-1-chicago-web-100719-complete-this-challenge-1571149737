class Review
    attr_reader :customer, :restaurant
    attr_accessor :content
    attr_writer :rating

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

    def rating
        if @rating > 5
            return 5
        elsif @rating < 1
            return 1
        else return @rating
        end
    end

    # def rating=(num)
    #     if num > 5
    #         @rating = 5
    #     elsif num < 1
    #         @rating = 1
    #     else
    #         @rating = num
    #     end
    # end
end

