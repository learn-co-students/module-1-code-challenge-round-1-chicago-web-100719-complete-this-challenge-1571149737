class Restaurant
  attr_reader :name

  @@all =[]

    def initialize(name)
      @name = name
      self.class.all << self
    end

    def customers
      Review.all.select{|customer| customer == self}
    end

    def reviews
      Review.all
    end

    def average_star_rating 
      
      average= Review.all.map{|rating|rating}

      average.sum
    end

    def longest_review

    end

    def self.all
      @@all
    end

end


#I'm trash. I drew a blank. I have accepted my fate. RIP.