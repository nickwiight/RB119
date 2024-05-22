=begin
Create a method that takes a single integer argument and returns the sum of all 
the multiples of 7 or 11 that are less than the argument. If a number is a 
multiple of both 7 and 11, count it just once.

For example, the multiples of 7 and 11 that are below 25 are 7, 11, 14, 21, 
and 22. The sum of these multiples is 75.

If the argument is negative, return 0.

-P
input: integer
output: intger

-E
processing time for large inputs?

-D
integers all the way down

-A
- initialize count to 0
- loop input times parameter number
- if number % 7 or % 11 == 0, add to count 
return count
=end

def seven_eleven(integer)
  # count = 0
  # integer.times do |number|
  #   count += number if number % 7 == 0 || number % 11 == 0
  # end
  # count
  (0...integer).to_a.select do |num|
    num % 7 == 0 || num % 11 == 0
  end.sum
end

# Examples
p seven_eleven(10) == 7
p seven_eleven(11) == 7
p seven_eleven(12) == 18
p seven_eleven(25) == 75
p seven_eleven(100) == 1153
p seven_eleven(0) == 0
p seven_eleven(-100) == 0
