def sum_of_numbers(string)
  sum = 0
  current_num = ''
  string.chars.each do |char|
    if ('0'..'9').to_a.include? char
      current_num << char
    else
      sum += current_num.to_i
      current_num = ''
    end
  end
  sum += current_num.to_i
  sum
end


p sum_of_numbers('L12aun3ch Sch3oo451')
p sum_of_numbers('HE2LL3O W1OR5LD')
