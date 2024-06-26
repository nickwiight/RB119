=begin
Create a method that takes a string as an argument and returns true if the 
string is a pangram, false if it is not.

Pangrams are sentences that contain every letter of the alphabet at least once. 
For example, the sentence "Five quacking zephyrs jolt my wax bed." is a pangram 
since it uses every letter at least once. Note that case is irrelevant.

-P
input: string
output: boolean

-E

-D
array of characters

-A
- downcase input string
- create array of characters
- remove non alphabetic characters
  - 
- remove duplicate elements
- if array length == 26, return true, else false
=end

def is_pangram(string)
  string.downcase.chars.uniq.select do |char| 
    ('a'..'z').include? char 
  end.length == 26
end

# Examples
p is_pangram('The quick, brown fox jumps over the lazy dog!') == true
p is_pangram('The slow, brown fox jumps over the lazy dog!') == false
p is_pangram("A wizard’s job is to vex chumps quickly in fog.") == true
p is_pangram("A wizard’s task is to vex chumps quickly in fog.") == false
p is_pangram("A wizard’s job is to vex chumps quickly in golf.") == true

my_str = 'Sixty zippers were quickly picked from the woven jute bag.'
p is_pangram(my_str) == true
