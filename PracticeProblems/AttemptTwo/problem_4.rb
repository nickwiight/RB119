=begin
Create a method that takes an array of integers as an argument and returns an 
array of two numbers that are closest together in value. If there are multiple 
pairs that are equally close, return the pair that occurs first in the array.

-P
input: array of integers
output: array of integers

Return an array of that represents the two elements that are closest together.

-E
negative numbers?
array with element count of less than 2?

-D
hash - key is integer, value is array of arrays of pairs that are key length 
apart

-A
- create a pairs hash
- loop array length times, parameter i
  - loop array length - (i + 1), parameter j
    - create an array, first element is array[i], second is array[j]
    - take the absolute value of the subraction of the second element from the 
    first assign to a difference variable 
    - add the array to the value of the pairs hash using the difference as a key
- return the first element of the minimum key's value in the pairs hash
=end

def closest_numbers(array)
  pairs = Hash.new { |hash, key| hash[key] = [] }

  array.length.times do |i|
    1.upto(array.length - i - 1) do |j|
      pair = [array[i], array[i + j]]
      difference = (pair[0] - pair[1]).abs
      pairs[difference] << pair
    end
  end

  min_key = pairs.keys.min
  pairs[min_key].first
end

# Examples
p closest_numbers([5, 25, 15, 11, 20]) == [15, 11]
p closest_numbers([19, 25, 32, 4, 27, 16]) == [25, 27]
p closest_numbers([12, 22, 7, 17]) == [12, 7]
