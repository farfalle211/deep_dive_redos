# Commit 1 - Research Questions

# 1. What is a method that returns the first character in a string?

# string = "hello"
# return string[0]

# Commit 2 & 3 - Initial Solution

def drive_thru
  attendant_array = ["That comes with hash browns or fries.", "do you want cheese on that?", "Do you want to supersize that?"]

  puts "Welcome to Ruby Burger. We have specials on Hamburgers, Fish Filet and Cookies for a dollar. Can I take your order?"

  response = gets.chomp

  while response != response.upcase
    puts "I'm sorry, you'll have to speak up Ma'am"
    response = gets.chomp
  end

  until response == "THATS IT"
    puts attendant_array.sample 
    response = gets.chomp
  end

  puts "Pull up to the first window."
end

# Commit 4 - Refactored Solution

  # Step 1
  # vvvvvvvvvvv copy your initial solution here vvvvvvvvvvvvvvvv

  # ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  
  # Step 2: comment out your original code above
  # Step 3: then refactor in this section.

# Runner Code

drive_thru


