=begin
Create a method that returns the count of distinct case-insensitive alphabetic 
characters and numeric digits that occur more than once in the input string. 
You may assume that the input string contains only alphanumeric characters.

-P
input: string
output: integer

-E
empty string? 0?

-D
string -> array of characters -> integer (count)

-A
- downcase the input
- create an array of characters
- make the character array unique
- select characters that appear more than once in the original, downcased string
- count elements in the array
=end

def distinct_multiples(string)
  string.downcase.chars.uniq.select do |char|
    string.downcase.count(char) > 1
  end.length
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
