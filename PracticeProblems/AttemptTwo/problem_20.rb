=begin
Create a method that takes an array of numbers, all of which are the same 
except one. Find and return the number in the array that differs from all the 
rest.

The array will always contain at least 3 numbers, and there will always be 
exactly one number that is different.

-P
input: array of numbers
output: number

-E
negative? should make no difference, but not in tests

-D
array -> selection -> return int

-A
- create an array with the unique values of the input array
- iterate over every element in the unique array
  - if element's count in the input array is == 1, return it
- no need for a default return, we will always return early
=end

def what_is_different(array)
  array.uniq.each { |int| return int if array.count(int) == 1 }
end

# Examples

p what_is_different([0, 1, 0]) == 1
p what_is_different([7, 7, 7, 7.7, 7]) == 7.7
p what_is_different([1, 1, 1, 1, 1, 1, 1, 11, 1, 1, 1, 1]) == 11
p what_is_different([3, 4, 4, 4]) == 3
p what_is_different([4, 4, 4, 3]) == 3
