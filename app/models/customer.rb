class Customer
  attr_reader :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end
  def self.all 
    @@all
end
def restaurants
  Review.all.select{|restaurant| restaurant.coustomer == self}
end 
def find_by_name
  
end 

