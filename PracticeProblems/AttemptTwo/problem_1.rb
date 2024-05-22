=begin
Create a method that takes an array of numbers as an argument. For each number, 
determine how many numbers in the array are smaller than it, and place the 
answer in an array. Return the resulting array.

When counting numbers, only count unique values. That is, if a number occurs 
multiple times in the array, it should only be counted once.

-P
input: array of numbers
output: array of numbers

Take an array of numbers. For each element, count how many elements in the array 
are less than it, add the count to an array, then return this new array.

Only count unique values in the origin array.

-E
Floats? 
Empty array?

-D
Transformation of arrays

-A
- Create a copy of the input array, that only has the unique values of the 
incoming array.
- Iterate over every element in the input array.
- Count how many elements in the unique array are less than the current element 
of the loop.
- Add the count to a counting array.
- Return the counting array.
=end

# My way
# def smaller_numbers_than_current(array)
#   array.map do |number|
#     array.uniq.count { |num| num < number }
#   end
# end

# algorithm way
def smaller_numbers_than_current(array)
  unique_array = array.uniq
  count_array = []
  array.each do |number|
    count = unique_array.count { |num| num < number }
    count_array.append(count)
  end
  count_array
end

# Examples
p smaller_numbers_than_current([8, 1, 2, 2, 3]) == [3, 0, 1, 1, 2]
p smaller_numbers_than_current([7, 7, 7, 7]) == [0, 0, 0, 0]
p smaller_numbers_than_current([6, 5, 4, 8]) == [2, 1, 0, 3]
p smaller_numbers_than_current([1]) == [0]

my_array = [1, 4, 6, 8, 13, 2, 4, 5, 4]
result   = [0, 2, 4, 5, 6, 1, 2, 3, 2]
p smaller_numbers_than_current(my_array) == result
