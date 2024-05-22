=begin
Create a method that takes an array of integers as an argument and returns the 
integer that appears an odd number of times. There will always be exactly one 
such integer in the input array.

- Problem
Input: array of integers
Output: integer that appears an odd number of times in the input.

- Examples
Can't have empty arrays per the rules.

- Data Structure
Hash that has integers as keys and whose values is the count of the key in the 
input array.

- Algorithm
- Initialize a hash so default values are 0
- Iterate over every element in the input array.
  - increment the value of the element in the hash by one
- Select the key whose value is odd
=end

def odd_fellow(array)
  count_hash = Hash.new { |hash, key| hash[key] = 0 }
  array.each { |number| count_hash[number] += 1 }
  count_hash.keys.select { |key| count_hash[key].odd? }.first
end

# Examples
p odd_fellow([4]) == 4
p odd_fellow([7, 99, 7, 51, 99]) == 51
p odd_fellow([7, 99, 7, 51, 99, 7, 51]) == 7
p odd_fellow([25, 10, -6, 10, 25, 10, -6, 10, -6]) == -6
p odd_fellow([0, 0, 0]) == 0
