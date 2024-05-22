=begin
Create a method that takes two string arguments and returns the number of times 
that the second string occurs in the first string. Note that overlapping 
strings don't count: 'babab' contains 1 instance of 'bab', not 2.

You may assume that the second argument is never an empty string.

-P
Input: two strings
output: integer

-E

-D
strings -> array -> count

-A
- parameters named first, second
- initialize characters to the array of characters of first
- initialize count to 0
- while characters length > 0
  - check a slice of the characters, starting at index 0, length second string 
  length
  - if slice == second, count += 1 and remove the slice from characters
  - else shift first character from characters
return count
=end

def count_substrings(first, second)
  characters = first.chars
  count = 0
  while characters.length > 0
    slice = characters[0, second.length].join
    if slice == second
      count += 1
      characters.shift(second.length)
    else
      characters.shift
    end
  end
  count
end

#Examples
p count_substrings('babab', 'bab') == 1
p count_substrings('babab', 'ba') == 2
p count_substrings('babab', 'b') == 3
p count_substrings('babab', 'x') == 0
p count_substrings('babab', 'x') == 0
p count_substrings('', 'x') == 0
p count_substrings('bbbaabbbbaab', 'baab') == 2
p count_substrings('bbbaabbbbaab', 'bbaab') == 2
p count_substrings('bbbaabbbbaabb', 'bbbaabb') == 1
