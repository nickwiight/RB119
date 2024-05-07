=begin
Create a method that returns the count of distinct case-insensitive alphabetic 
characters and numeric digits that occur more than once in the input string. 
You may assume that the input string contains only alphanumeric characters.

- Problem
Input: string of alphanumeric characters
Output: integer representing count of characters that appear more than once
in the input.

- Examples
Empty string? Return 0? 

- Data Strucure
Hash whose keys are letter and number strings, whose value is the count of those
letters and numbers in the string. Return an integer representing the count 
of keys whose value is greater than 1.

- Algorithm
- Initialize a count_hash to have a default value of 0
- Iterate over every character of the string
  - downcase the character
  - use the character as a key for count_hash, and increment the value by 1
- Select keys by if their value is greater than 1
- Return the count of the selected keys
=end

def distinct_multiples(string)
  count_hash = Hash.new { |hash, key| hash[key] = 0 }
  string.each_char { |char| count_hash[char.downcase] += 1 }
  count_hash.keys.select { |key| count_hash[key] > 1 }.length
end

# Examples
p distinct_multiples('xyz') == 0               # (none
p distinct_multiples('xxyypzzr') == 3          # x, y, z
p distinct_multiples('xXyYpzZr') == 3          # x, y, z
p distinct_multiples('unununium') == 2         # u, n
p distinct_multiples('multiplicity') == 3      # l, t, i
p distinct_multiples('7657') == 1              # 7
p distinct_multiples('3141592653589793') == 4  # 3, 1, 5, 9
p distinct_multiples('2718281828459045') == 5  # 2, 1, 8, 4, 5
