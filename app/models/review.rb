require 'pry'

class Review

    attr_reader :reviews,
    @@all = []
end

def intailize 
    @reviews = reviews
    @@all << self
end
