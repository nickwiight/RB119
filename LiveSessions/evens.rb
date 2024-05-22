# PERCENTAGE OF EVENS
=begin
Given a positive integer, return the percentage of even numbers between 1 and 
that integer, rounded to two decimal places.

- Problem
Input: Integer
Output: float

- Examples:
- No negative numbers?
- No number?
- Large numbers? Processing time?

- Data Structure
- Integers and loops

- Algorithm
- Initialize a count variable to 0
- Iterate over the numbers from 1 to a given number
  - if the number is even, increment the count by 1
- convert the count to a float
- divide count by the given number
- round the divided number to two digits
- return the divided number
=end

def evenPercent(integer)
  count = 0
  1.upto(integer) { |number| count += 1 if number.even? }
  (count.to_f / integer).round(2)
end

p evenPercent(1) == 0
p evenPercent(2) == 0.5
p evenPercent(3) == 0.33
p evenPercent(12) == 0.5
p evenPercent(13) == 0.46
