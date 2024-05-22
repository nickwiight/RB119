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

- P
Input: Array of integers
Output: integer

Return the number of pairs of integers. If there are an odd number of integers 
in the given array, the odd number is not counted.

Return 0 for ararys with less than two elements. 

- E
If there are an odd number of repeats of a value in the array, the last value
is ignored.

- D
Keeping in arrays seems the way to go. We only need to use an integer to keep 
count of the pairs

- A
-For an incoming array, create a new array of its unique values.
-Iterate over each unique value.
  -For each iteration, get the count of the number of times the value is in 
  the original array.
  -Divide the total count by two, flooring the result.
  -Add this number to a counter variable
return the counter variable
=end

def pairs(array)
  return 0 if array.length < 2
  
  count = 0
  array.uniq.each do |number|
    count += (array.count(number) / 2).floor
  end
  count
end

p pairs([3, 1, 4, 5, 9, 2, 6, 5, 3, 5, 8, 9, 7]) == 3
p pairs([2, 7, 1, 8, 2, 8, 1, 8, 2, 8, 4]) == 4
p pairs([]) == 0
p pairs([23]) == 0
p pairs([997, 997]) == 1
p pairs([32, 32, 32]) == 1
p pairs([7, 7, 7, 7, 7, 7, 7]) == 3
