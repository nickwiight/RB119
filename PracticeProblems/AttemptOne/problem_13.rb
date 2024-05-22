=begin
Create a method that takes two strings as arguments and returns true if some 
portion of the characters in the first string can be rearranged to match the 
characters in the second. Otherwise, the method should return false.

You may assume that both string arguments only contain lowercase alphabetic 
characters. Neither string will be empty.

- Problem
Input: Two strings, a scramble which is a series of characters, and a comparison 
string
Output: bool representing if the comparison string can be created from the 
series of characters.

You may assume that both string arguments only contain lowercase alphabetic 
characters. Neither string will be empty.

- Examples
- The comparison string can be a different size than the scramble

- Data structure
Two hashes representing the character count of each string. A bool representing
if the scramble string has at least as many characters for every character in 
the comparison string.

- Algorithm
- Create two hashes, who have every lowercase alphabetic character as their keys
and whose value is initialized to zero.
- Iterate over each character of both strings.
  - Increment the value of the string whose key matches the character and string
- for each key-value pair of the comparison string hash, if the scramble hash 
has a value that is equal to or greater than the comparison hash, return true.
- Return false otherwise
=end

def unscramble(scramble, string)
  scramble_hash = initial_letter_hash
  string_hash = initial_letter_hash
  scramble.each_char { |char| scramble_hash[char] += 1}
  string.each_char { |char| string_hash[char] += 1}
  string_hash.all? do |key, value|
    scramble_hash[key] >= value
  end
end

def initial_letter_hash
  hash = {}
  ('a'..'z').to_a.each do |letter|
    hash[letter] = 0
  end
  hash
end

# Examples
p unscramble('ansucchlohlo', 'launchschool') == true
p unscramble('phyarunstole', 'pythonrules') == true
p unscramble('phyarunstola', 'pythonrules') == false
p unscramble('boldface', 'coal') == true
