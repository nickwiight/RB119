def most_common_char(string)
  count_hash = Hash.new { |hash, value| hash[value] = {count: 0, appeared: -1 } }
  string.downcase.chars.each_with_index do |letter, index|
    count_hash[letter][:count] += 1
    appeared = count_hash[letter][:appeared] 
    count_hash[letter][:appeared] = index if index < 0 || index < appeared 
  end
  sorted_keys = count_hash.keys.sort_by { |key| count_hash[key][:count] }
  highest_count = count_hash[sorted_keys[-1]][:count]
  lowest_keys = sorted_keys.select { |key| count_hash[key][:count] == highest_count }
  lowest_keys.sort_by! { |key| count_hash[key][:appeared] }
  lowest_keys[0]
end

p most_common_char('Hello World') == 'l'
p most_common_char('Mississippi') == 'i'
p most_common_char('Happy birthday!') == 'h'
p most_common_char('aaaaaAAAA') == 'a'

my_str = 'Peter Piper picked a peck of pickled peppers.'
p most_common_char(my_str) == 'p'

my_str = 'Peter Piper repicked a peck of repickled peppers. He did!'
p most_common_char(my_str) == 'e'
