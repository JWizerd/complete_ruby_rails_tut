# 1. We want to create a hash key = city & value = area code (970)
# 2. prompt user for which city the user would like to get area code from
# 3. display options of city names to choose from in phone book
# 4. display area code based on users input
# 5. prompt the user to keep putting in a city to get an area code UNLESS stated otherwise. use "Y" or "N" responses to generate activity.

def area_codes
  phone_book = {
    loveland: "970",
    denver: "303",
    alliance: "308",
    magic: "555",
    another: "111",
    one_more: "222"
  }
  
  puts "Welcome to the Happy Times and Beers Phonebook! Trying to reach one of your fellow advocates? Please enter a city!"

  city_name = gets.chomp.to_s.downcase

  puts "Here is a list of City Names available in the Phonebook! Please select a city"
  puts "======================="
  phone_book.each { |key,val| puts "#{key}"  }
  puts "======================="
  
  # check to see if user input is in phone_book
  if phone_book.key?(city_name.to_sym)
    puts "The area code for that city is: #{phone_book[city_name.to_sym]}"
    try_again?
  else
    puts "Your area code is not in our phonebook."
    try_again?
  end
end

# determines if program should ask for another city 
def try_again?
  puts "try again? enter 'Y' or 'N'."
  answer = gets.chomp.to_s
  if answer == "Y"
    area_codes
  else 
    puts "Have a good day!"
  end 
end

area_codes

