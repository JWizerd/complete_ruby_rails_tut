require 'pp'
require_relative 'user'

user = User.new 'jwodke@outlook.com', 'jeremiah'
user = User.new 'johndoes@outlook.com', 'john'

pp user

user.save