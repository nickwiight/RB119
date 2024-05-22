=begin
Create a method that takes an array of integers as an argument and returns the 
number of identical pairs of integers in that array. For instance, the number 
of identical pairs in [1, 2, 3, 2, 1] is 2: there are two occurrences each of 
both 2 and 1.

If the array is empty or contains exactly one value, return 0.

If a certain number occurs more than twice, count each complete pair once. For 
instance, for [1, 1, 1, 1] and [2, 2, 2, 2, 2], the method should return 2. The 
first array contains two complete pairs while the second has an extra 2 that 
isn't part of the other two pairs.

-P
input: array of integers
output: integer representing count of pairs

-E
negative numbers?

-D
arrays, selecting arrays, counting and summing to an integer

-A
- initialize unique_array to the unique values of the incoming array
- initialize a count variable to 0
- iterate over every element in unique_array
  - count element occurances in input array
  - divide the count by 2, rounding down
  - add to count
- return count
=end

# def pairs(array)
#   count = 0
#   array.uniq.each do |number|
#     pairs = array.count(number) / 2
#     count += pairs
#   end
#   count
# end

def pairs(array)
  array.uniq.map { |num| array.count(num) / 2 }.sum
end

# Examples
p pairs([3, 1, 4, 5, 9, 2, 6, 5, 3, 5, 8, 9, 7]) == 3
p pairs([2, 7, 1, 8, 2, 8, 1, 8, 2, 8, 4]) == 4
p pairs([]) == 0
p pairs([23]) == 0
p pairs([997, 997]) == 1
p pairs([32, 32, 32]) == 1
p pairs([7, 7, 7, 7, 7, 7, 7]) == 3
