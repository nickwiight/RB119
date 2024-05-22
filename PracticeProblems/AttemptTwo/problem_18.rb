=begin
Create a method that takes an array of integers as an argument. Determine and 
return the index N for which all numbers with an index less than N sum to the 
same value as the numbers with an index greater than N. If there is no index 
that would make this happen, return -1.

If you are given an array with multiple answers, return the index with the 
smallest value.

The sum of the numbers to the left of index 0 is 0. Likewise, the sum of the 
numbers to the right of the last element is 0.

-P
input: array of integers
output: integer

-E
empty array?
do not sum index value to either side

-D
Array -> array slices -> integer

-A
- loop a number of times equal to array's length, parameter index
  - create left sum
    - if index is 0, left sum is 0
    - else, slice array from 0, length index and sum
  - create right sum
    - if index == array length - 1, right sum is 0
    - else slice array from index + 1 length of -1 and sum
  - if left sum == right sum return index
- if we don't return early, return -1
=end

def equal_sum_index(array)
  length = array.length
  length.times do |index|
    left_sum = index == 0 ? 0 : array[0, index].sum
    right_sum = index == length - 1 ? 0 : array[index + 1, length - index].sum
    return index if left_sum == right_sum
  end
  -1
end

# Examples
p equal_sum_index([1, 2, 4, 4, 2, 3, 2]) == 3
p equal_sum_index([7, 99, 51, -48, 0, 4]) == 1
p equal_sum_index([17, 20, 5, -60, 10, 25]) == 0

# The following test case could return 0 or 3. Since we're
# supposed to return the smallest correct index, the correct
# return value is 0.
p equal_sum_index([0, 20, 10, -60, 5, 25]) == 0
