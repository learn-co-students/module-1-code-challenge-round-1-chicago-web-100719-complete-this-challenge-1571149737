require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

sarah = Customer.new("Sarah", "Laloggia")
john = Customer.new("John", "Smith")
alisha = Customer.new("Alisha", "Workman")
sarahb = Customer.new("Sarah", "Blum")

agami = Restaurant.new("Agami")
oshaugn = Restaurant.new("O'Shaugnessy's")
spoken = Restaurant.new("Spoken Cafe")
spoken_2 = Restaurant.new("Spoken Cafe")

sarah.add_review(oshaugn, "This is my favorite place!", 5)
sarah.add_review(spoken, "best coffee in the neighborhood", 4)
alisha.add_review(oshaugn, "Great food and beer", 4)
john.add_review(agami, "good sushi, high prices", 3)
john.add_review(agami, "went back, and they had added a great lunch special! More stuff so that this is definitely the longest review.", 4)
john.add_review(spoken, "yummmm bagels", 5)
sarah.add_review(agami, "good tuna, crab was just okay", 3)

test_review1 = Review.new(sarahb, spoken_2, "Just as good as the original", 4)
test_review2 = Review.new(alisha, spoken, "droooooooool", 4)




binding.pry
0 #leave this here to ensure binding.pry isn't the last line