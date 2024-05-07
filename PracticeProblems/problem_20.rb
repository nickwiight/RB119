=begin
3:37
Create a method that takes an array of numbers, all of which are the same except 
one. Find and return the number in the array that differs from all the rest.

The array will always contain at least 3 numbers, and there will always be 
exactly one number that is different.

- Problem
Input: array of numbers
Output: number that is not the same as the rest.

- Examples
- Numbers can be floats or integers.
- Negative numbers not included in the example.

- Data Structure
Staying in arrays until we return the odd number out.

- Algorithm
- Create an array whose values are the unique values of the input array
- Select the element of the unique array whose count in the input array is 1
- return that element
=end

def what_is_different(array)
  array.uniq.select { |number| array.count(number) == 1 }.first
end

# Examples
p what_is_different([0, 1, 0]) == 1
p what_is_different([7, 7, 7, 7.7, 7]) == 7.7
p what_is_different([1, 1, 1, 1, 1, 1, 1, 11, 1, 1, 1, 1]) == 11
p what_is_different([3, 4, 4, 4]) == 3
p what_is_different([4, 4, 4, 3]) == 3
