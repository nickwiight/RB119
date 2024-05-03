def minimum_sum(array)
  loops = array.size - 4
  total = nil

  loops.times do |start|
    loop_sum = array[start, 5].sum
    total = loop_sum if total.nil? || loop_sum < total
  end

  total
end

p minimum_sum([1, 2, 3, 4]).nil?
p minimum_sum([1, 2, 3, 4, 5, -5]) == 9
p minimum_sum([1, 2, 3, 4, 5, 6]) == 15
p minimum_sum([55, 2, 6, 5, 1, 2, 9, 3, 5, 100]) == 16
p minimum_sum([-1, -5, -3, 0, -1, 2, -4]) == -10
