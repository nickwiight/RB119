=begin
Create a method that takes an array of integers as an argument and returns the 
integer that appears an odd number of times. There will always be exactly one 
such integer in the input array.

-P
input; array of integers
output: integer

-E
empty array?
one element return that element

-D
array -> select -> integer

-A
- initialize unique_array to the unique values of the input array
- iterate over every element in unique_array, parameter int
  - count int in input array
  - if odd? return int
- no need for a default return, we will always break out early
=end

def odd_fellow(array)
  array.uniq.each { |int| return int if array.count(int).odd? }
end

# Examples

p odd_fellow([4]) == 4
p odd_fellow([7, 99, 7, 51, 99]) == 51
p odd_fellow([7, 99, 7, 51, 99, 7, 51]) == 7
p odd_fellow([25, 10, -6, 10, 25, 10, -6, 10, -6]) == -6
p odd_fellow([0, 0, 0]) == 0
