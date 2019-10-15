class Review
    @@all = []

        def initialize(result)
            @result = result
            self.class.all << self
        end

        def customer

        end

        def restaurant

        end

        def rating 

        end

        def content

        end


        
        def self.all
        @@all
        end

end

