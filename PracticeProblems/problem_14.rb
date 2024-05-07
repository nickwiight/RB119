=begin
Create a method that takes a single integer argument and returns the sum of all 
the multiples of 7 or 11 that are less than the argument. If a number is a 
multiple of both 7 and 11, count it just once.

For example, the multiples of 7 and 11 that are below 25 are 
7, 11, 14, 21, and 22. The sum of these multiples is 75.

If the argument is negative, return 0.

-Problem
Input: integer
Output: integer representing sum of multiples of 7 and 11 less than input

- Examples
- input of 0 returns 0.
- inputs are quite small, do I have to worry about run time for larger numbers?

- Data Structure
Integers and loops

- Algorithm
- If the input is negative, return 0
- Iterate from zero to the input integer
  - If the number is a multiple of 7 or 11, add it to a count variable
return count variable
=end

def seven_eleven(integer)
  return 0 if integer.negative?

  count = 0

  integer.times do |number|
    count += number if number % 7 == 0 || number % 11 == 0
  end

  count
end

# Examples
p seven_eleven(10) == 7
p seven_eleven(11) == 7
p seven_eleven(12) == 18
p seven_eleven(25) == 75
p seven_eleven(100) == 1153
p seven_eleven(0) == 0
p seven_eleven(-100) == 0
