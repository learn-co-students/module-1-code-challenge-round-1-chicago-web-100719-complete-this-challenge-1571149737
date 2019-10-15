require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

janae = Customer.new("Janae", "Hall")
sean = Customer.new("Sean", "Gallagher")
elisabeth = Customer.new("Elisabeth", "Hall")
jackie = Customer.new("Jaclyn", "Santiago")
lee = Customer.new("Lee", "Hall")
teresa = Customer.new("Teresa", "Metz")
nae = Customer.new("Janae", "Tepe")

lotties = Restaurant.new("Lottie's")
waterfront = Restaurant.new("Waterfront Pizza")
el_sarape = Restaurant.new("El Sarape")
taco_land = Restaurant.new("Taco Land")
chuck_e_cheese = Restaurant.new("Chuck E. Cheese's")

r1 = janae.add_review(lotties, "Great beer!", 5)
r2 = sean.add_review(lotties, "Went there with a friend and was NOT disappointed", 4)
r3 = jackie.add_review(lotties, "Burgers need more onion!!!", 2)
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line