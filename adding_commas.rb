# Commit 1 - Research

# 1. 

# Commit 2 - Pseudocode

# input:   Intger   5   299     1818     99999999
# output:  String  "5" "299"   "1,818"  "9,999,999"

# Steps
# 1 - Start at the end of the number 
# 2 - Count three numbers over. If the number is greater than four digits over, add a comma between the third and fourth digit from the right. 
# 3 - Repeat the process until you get to a point where there is not a fourth digit to the left of where you started. 

# Commit 3 - Initial Solution

def add_commas(number)
  original = number.to_s
  length = original.length
  result = ""
  index = 0

  while index < length
    result = "," + result if index % 3 == 0 && index != 0
    index += 1
    result = original[ length - index ] + result
  end

  result
end

# Commit 5 - Refactor Solution



# Commit 4 - Write Runner Code / Tests

p add_commas(123456789)
puts add_commas(5) == "5" # I've written the first test, write the rest on your own.
puts add_commas(123456789) == "123,456,789"
puts add_commas(1234) == "1,234"
puts add_commas(12345) == "12,345"
