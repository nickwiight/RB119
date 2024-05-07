=begin
Create a method that takes two string arguments and returns the number of times 
that the second string occurs in the first string. Note that overlapping 
strings don't count: 'babab' contains 1 instance of 'bab', not 2.

You may assume that the second argument is never an empty string.

- Problem
Input: Two strings, the second is never empty.
Output: Integer representing the count of the number of times the second 
string occurs in the first string.

- Assuming mutating the incoming string is not okay.

- Examples
- Empty string should return 0.
- Examples are all lowercase and do not contain spaces.


- Data Structure
We're able to work completely in strings. We just need a count variable that is
an integer that is incremented when a string conditional is met.

- Algorithm
- Create a copy of the incoming string.
- Loop until the copied string's length is less than the length of the comparitive 
substring.
- Each iteration do the following:
  - Check if a slice of the string starting from the first character with a length
equal to the comparitve substring is equal to the comparitve substring.
    - If the slice is equal, increment a counter variable by one, and remove 
the slice from the copied string.
    - If the slice is not equal, remove the first character of the copied string.
- Return count
=end

def count_substrings(string, sub_string)
  dup_string = string.dup
  count = 0
  until dup_string.length < sub_string.length
    if dup_string[0, sub_string.length] == sub_string
      count += 1
      dup_string.slice!(0, sub_string.length)
    else
      dup_string.slice!(0, 1)
    end
  end
  count
end

# Examples
p count_substrings('babab', 'bab') == 1
p count_substrings('babab', 'ba') == 2
p count_substrings('babab', 'b') == 3
p count_substrings('babab', 'x') == 0
p count_substrings('babab', 'x') == 0
p count_substrings('', 'x') == 0
p count_substrings('bbbaabbbbaab', 'baab') == 2
p count_substrings('bbbaabbbbaab', 'bbaab') == 2
p count_substrings('bbbaabbbbaabb', 'bbbaabb') == 1
