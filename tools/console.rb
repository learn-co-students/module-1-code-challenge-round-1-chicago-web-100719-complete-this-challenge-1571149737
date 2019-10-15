require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

johnny = Customer.new("Johnny", "Bravo")
kat = Customer.new("Kat", "Math")
alex = Customer.new("Alex", "Locked")

waysub = Restaurant.new("Waysub")
greek = Restaurant.new("Greek")
zeta = Restaurant.new("Zeta")







test_new = Review.new(johnny, waysub)
test_other = Review.new(kat, zeta)
new_one = Review.new(alex, greek)
last_one = Review.new(johnny, zeta)


# add_review("good", 7, johnny, waysub)
# add_review("me like it", 10, kat, greek)
# add_review("nice", 8, alex, zeta)
# add_review("average", 6 , johnny, zeta)
# add_review("me no like it", 3, kat, zeta)
# add_review("great", 9, alex, greek)





binding.pry
0 #leave this here to ensure binding.pry isn't the last line