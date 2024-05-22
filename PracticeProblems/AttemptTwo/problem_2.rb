=begin
Create a method that takes an array of integers as an argument. The method 
should return the minimum sum of 5 consecutive numbers in the array. If the 
array contains fewer than 5 elements, the method should return nil.

-P
input: array of integers
output: integer representing the minimum sum of 5 consecutive numbers

If the array has less than 5 elements, return nil
-E

-D
loops and integers

-A
- if the input array has less than 5 elements, return nil.
- loop input array length - 4 times
- starting at the current index of the loop, slice 5 elements out of the array
- sum the slice
- compare the sum to a minimum sum variable
  - if the minimum sum variable is nil, assign sum to minimum sum
  - if the sum is less than the minimum sum, assign sum to minimum sum
- return minimum sum
=end

# algorithm way
# def minimum_sum(array)
#   return nil if array.length < 5

#   loop_count = array.length - 4
#   minimum_sum = nil
  
#   loop_count.times do |index|
#     array_slice = array[index, 5]
#     sum = array_slice.sum
#     minimum_sum = sum if minimum_sum.nil?
#     minimum_sum = sum if minimum_sum > sum
#   end
#   minimum_sum
# end

# my way
def minimum_sum(array)
  sum_array = []

  (array.length - 4).times do |index|
    sum_array << array[index, 5].sum
  end

  sum_array.min
end

# Examples
p minimum_sum([1, 2, 3, 4]) == nil
p minimum_sum([1, 2, 3, 4, 5, -5]) == 9
p minimum_sum([1, 2, 3, 4, 5, 6]) == 15
p minimum_sum([55, 2, 6, 5, 1, 2, 9, 3, 5, 100]) == 16
p minimum_sum([-1, -5, -3, 0, -1, 2, -4]) == -10
