def closest_numbers(array)
  count_hash = Hash.new { |hash, value| hash[value] = [] }

  array.each_with_index do |number, index|
    loops_count = array.size - index - 1
    1.upto(loops_count) do |count|
      sub_array = [number, array[index + count]]
      sub_array_size = sub_array.inject(&:-)
      sub_array_size *= -1 if sub_array_size < 0
      count_hash[sub_array_size] << sub_array
    end
  end

  lowest = count_hash.keys.sort[0]
  count_hash[lowest].first
end

p closest_numbers([5, 25, 15, 11, 20]) == [15, 11]
p closest_numbers([19, 25, 32, 4, 27, 16]) == [25, 27]
p closest_numbers([12, 22, 7, 17]) == [12, 7]
