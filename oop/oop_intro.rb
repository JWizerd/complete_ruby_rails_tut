class User
  attr_accessor :name, :email
  # this method creates getter and setter methods for our user class. 
  # These methods allow us to access instance variables outside of the class.
  # in order to access instance variables in ruby we always have to create methods to do so.

  def initialize(name, email)
    @name = name
    @email = email
  end
end

user = User.new("jeremiah", "jwodke@outlook.com")
puts "my name is #{user.name} and my email is #{user.email}"
user.name = "john"
user.email = "john@outlook.com"
puts "my new name is #{user.name} and my email is #{user.email}"

class Buyer < User

end

class Seller < User

end

class Admin < User

end