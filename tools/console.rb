require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

nathan = Customer.new("Nathan","Alex")
tariq = Customer.new("Tariq","Trotter")
ahmir = Customer.new("Ahmir","Thompson")

# loyalist = Restaurant.new("The Loyalist")
# cheval = Restaurant.new("Au Cheval")

# loyalist_review = Review.new("Great Purist Hamburger")
# cheval_review = Review.new("Explosive Flavor")






binding.pry
0 #leave this here to ensure binding.pry isn't the last line