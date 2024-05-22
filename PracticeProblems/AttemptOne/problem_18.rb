=begin
Create a method that takes an array of integers as an argument. Determine and 
return the index N for which all numbers with an index less than N sum to the 
same value as the numbers with an index greater than N. If there is no index 
that would make this happen, return -1.

If you are given an array with multiple answers, return the index with the 
smallest value.

The sum of the numbers to the left of index 0 is 0. Likewise, the sum of the 
numbers to the right of the last element is 0.

-Problem
Input: array of integers
Output: integer

select a number in the array. Sum all numbers to the left and compare to the sum 
of all characters to the right of that number. If the sums are the same, return 
the index of the selected number. If no number is selected, return -1.

When summing numbers, do not include the selected number in any sums. If the 
number selected has an index of 0, the left sum is 0. If the number selected 
index is -1, the right sum is 0.

If multiple numbers would apply, select the furthest left one.

- Examples
No empty arrays. Return -1?

- Data Structure
We won't be leaving arrays until we return an index value.

- Algorithm
- Iterate over every element of the array.
  - Calculate the sum of all elements to the left of the index of the iteration,
  and assign it to left_sum.
    - If the index is 0, left_sum = 0
  - Calculate the sum of all elements to the right of the index of the iteration,
  and assign it to right_sum.
    - If the index is -1, right_sum = 0
  - if left and right sums are equal, return the index.
- Return -1 if there isn't a previous return.
=end

def equal_sum_index(array)
  array.length.times do |index|
    left_sum = array[0, index].inject(&:+)
    left_sum = 0 if index == 0
    right_sum = array[index + 1, array.length - index].inject(&:+)
    right_sum = 0 if index == array.length - 1
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
