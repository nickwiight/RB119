# def smaller_numbers_than_current(array)
#   count_array = []

#   array.size.times do |index|
#     array_copy = array.dup
#     value = array_copy.delete_at(index)
#     count_array << array_copy.uniq.count { |number| number < value}
#   end

#   count_array
# end

def smaller_numbers_than_current(array)
  array.map do |number|
    array.uniq.count { |n| n < number }
  end
end

p smaller_numbers_than_current([8, 1, 2, 2, 3]) == [3, 0, 1, 1, 2]
p smaller_numbers_than_current([7, 7, 7, 7]) == [0, 0, 0, 0]
p smaller_numbers_than_current([6, 5, 4, 8]) == [2, 1, 0, 3]
p smaller_numbers_than_current([1]) == [0]

my_array = [1, 4, 6, 8, 13, 2, 4, 5, 4]
result   = [0, 2, 4, 5, 6, 1, 2, 3, 2]
p smaller_numbers_than_current(my_array) == result
