=begin
Create a method that takes two strings as arguments and returns true if some 
portion of the characters in the first string can be rearranged to match the 
characters in the second. Otherwise, the method should return false.

You may assume that both string arguments only contain lowercase alphabetic 
characters. Neither string will be empty.

-P
inputs: string, string

-E
two inputs do not have to be the same length

-D
hash key letter, value count

-A
- create a hash that keys each uniqu character of the strings, and sets its value 
to the count of that letter in the strings
- iterate over second string's hash's keys.
  - if the first string's value for the key is less than the seconds, return false
- if we haven't returned, return true
=end

def unscramble(first, second)
  first_hash = letter_hash(first)
  second_hash = letter_hash(second)
  second_hash.keys.each do |key|
    return false if first_hash[key] < second_hash[key]
  end
  true
end

def letter_hash(string)
  hash = Hash.new { |hash, key| hash[key] = 0 }
  string.chars.each { |char| hash[char] += 1 }
  hash
end

# Examples
p unscramble('ansucchlohlo', 'launchschool') == true
p unscramble('phyarunstole', 'pythonrules') == true
p unscramble('phyarunstola', 'pythonrules') == false
p unscramble('boldface', 'coal') == true
