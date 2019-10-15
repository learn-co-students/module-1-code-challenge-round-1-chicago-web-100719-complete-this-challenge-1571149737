require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
joe = Customer.new("joe", "schmo")
john = Customer.new("john", "doe")
jane = Customer.new("jane", "james")
joe2 = Customer.new("joe", "schmell")


alinea = Restaurant.new("alinea")
giant = Restaurant.new("giant")

joealinea = Review.new(joe, alinea, "Good", 3)
joegiant = Review.new(joe, giant, "Bad", 1)
johnalinea = Review.new(john, alinea, "Very Good", 4)
johngiant = Review.new(john, giant, "BEST RESTAURANT EVER", 5)
jane.add_review(alinea, "Just Okay", 2)
joe.add_review(giant, "Better", 3)

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line