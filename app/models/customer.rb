require 'pry'

class Customer
  attr_reader :first_name, :last_name, :customer_instances,:restaurant, :content, :rating)


    @@all = []  # create array for all of the new

  def initialize(first_name, last_name)#
    @first_name = first_name
    @last_name  = last_name
    @customer_instances = customer_instances
    @restaurant = restaurant
    @content = content
    @rating = rating
    @@all << self
  end
#binding.pry
  def self.customer_instances(resturant, content, rating)
    all.customer_instances
  end

  def self.full_name  # started to return string of three intaialized 

    "#{first_name} #{last_name}"
  end
end
