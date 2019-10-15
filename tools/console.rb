require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

ben = Customer.new("Ben", "Davis")
hope = Customer.new("Hope", "Ironmonger")
anna = Customer.new("Anna", "Davis")
benjy = Customer.new("Ben", "Gold")

pequods = Restaurant.new("Pequods")
lou = Restaurant.new("Lou Malnatis")
ginos = Restaurant.new("Gino's")

ben.add_review(pequods, "Awesome Sauce Possum Dawg!", 10)
anna.add_review(lou, "sucks", -1)
hope.add_review(pequods, "rocks socks!", 3)
ben.add_review(ginos, "might be very very very good", 4)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line