# require 'benchmark'

# Commit 1 - Iterative Fibonacci Solution

# def fibonacci_iterative(number)
#   array = [0, 1]
#   loops = number - array.length

#   if number == 1
#     return [0]
#   elsif number == 2
#     return array
#   end

#   loops.times do |index|                            
#     next_number = array[index] + array[index + 1]    
#     array << next_number
#   end
#   array
# end

# Commit 2 - Recursive Fibonacci Solution

def fibonacci_recursive(number)
  array = [0, 1]

  if number == 1
    return [0]
  elsif number == 2
    return array
  end

  fibonacci_recursive(number - 1) + ([fibonacci_recursive(number - 1)[-2] + fibonacci_recursive(number - 1)[-1]])

end

# Runner Code

# p fibonacci_iterative(6) #=> [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]
# p fibonacci_iterative(8)  #=> [0, 1, 1, 2, 3, 5, 8, 13]

p fibonacci_recursive(10) #=> [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]
# p fibonacci_recursive(11) #=> [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55]

# Commit 3 - Benchmark

# num_of_times = 1_000_000_000 
# Benchmark.bm do |x|
#   x.report { fibonacci_iterative(10) * num_of_times }
#   x.report { fibonacci_recursive(10) * num_of_times }
# end