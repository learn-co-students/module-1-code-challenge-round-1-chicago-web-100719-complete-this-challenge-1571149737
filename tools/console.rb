require_relative '../config/environment.rb'
require 'pry'
def reload
  load 'config/environment.rb'
end

Customer.new = (first_name John, last_name Doe) 
Customer.new = (first_name Alfie, last_name Newman)
Customer.new = (first_name Lucy, :last_name Lou) 





# Insert code here to run

 before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line