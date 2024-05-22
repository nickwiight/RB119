=begin
Create a method that takes a nonempty string as an argument and returns an array 
consisting of a string and an integer. If we call the string argument s, the 
string component of the returned array t, and the integer component of the 
returned array k, then s, t, and k must be related to each other such that 
s == t * k. The values of t and k should be the shortest possible substring 
and the largest possible repeat count that satisfies this equation.

You may assume that the string argument consists entirely of lowercase 
alphabetic letters.

- Problem
Input: String of alphabetic characters that is non-empty.
Output: Array[a, b] where a is the smallest size string that creates the largest
b and b is the count of multiples of a.

- Examples
- If there isn't a substring with a multiple of at least 2, return the enter 
string.

- Data Structure
Start with a string, then use a hash to store substrings and their count.
Return the smallest length substring with the highest count as an array.

- Algorithm
- Iterate string length / 2 times with a parameter called length
- Create a substring starting at the start of the string with a length of length
- multiply the substring by the string's length divided by substring's length
  - If multiplied_string is equal to string, return [substring, multiplier]
- if no substring returned, return [string, 1]
=end

def repeated_substring(string)
  half_length = string.length / 2

  1.upto(half_length) do |length|
    substring = string[0, length]
    multiplier = string.size / substring.size

    return [substring, multiplier] if substring * multiplier == string
  end

  [string, 1]
end

# Examples
p repeated_substring('xyzxyzxyz') == ['xyz', 3]
p repeated_substring('xyxy') == ['xy', 2]
p repeated_substring('xyz') == ['xyz', 1]
p repeated_substring('aaaaaaaa') == ['a', 8]
p repeated_substring('superduper') == ['superduper', 1]
