#solve factorial using a loop
#5 * 4 * 3 * 2 * 1 = 120

# def factorial(number)
#   sum = number
#   while number > 1           #number= 5,  4,  3,   2, 
#     sum *= (number - 1)      #sum=    20, 60, 120, 
#     number -= 1              #number= 4,  3,  2,           
#   end
#   sum
# end

# p factorial(6)

# def factorial_2(number)
#   product = 1

#   until number <= 1     # 5, 4,  3,  2, 
#     product *= number   # 5, 20, 60, 120, 
#     number -= 1         # 4, 3,  2,  1
#   end

#   product
# end

# p factorial_2(5)


# def factorial_recursion(number)   #5   ---> returns 120
#   return 1 if number <= 1 # base case
#   5 * 24 # calling the method inside itself
# end

# def factorial_recursion(number)  #4 ---> returns 24
#   return 1 if number <= 1 # base case
#   4 * 6 # calling the method inside itself
# end

# def factorial_recursion(number)   #3  --> returns 6
#   return 1 if number <= 1 # base case
#   3 * 2 # calling the method inside itself
# end

# def factorial_recursion(number)    #2 ---> returns 2
#   return 1 if number <= 1 # base case
#   2 * 1 # calling the method inside itself
# end 

# def factorial_recursion(number)    #1    # BASE CASE
#   return 1 if number <= 1 # base case
#   number * factorial(number - 1) # calling the method inside itself
# end



def soft_cheese(type, age=8)
   "#{type}, aged #{age} months"
end

parmesan = soft_cheese("paramesan") # only passing in the first argument, uses the default for the second argument
blue_cheese = soft_cheese("blue", 3) # passing a second argument, overrides the default value

puts parmesan
puts blue_cheese