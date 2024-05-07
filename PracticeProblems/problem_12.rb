=begin
Create a method that takes a string as an argument and returns true if the 
string is a pangram, false if it is not.

Pangrams are sentences that contain every letter of the alphabet at least once. 
For example, the sentence "Five quacking zephyrs jolt my wax bed." is a pangram 
since it uses every letter at least once. Note that case is irrelevant.

- Problem
Input: string
Output: bool representing if the string is a pangram or not

case does not matter when determining pangrams

- Examples:
Ignore characters that aren't alphabetical. 
Doesn't matter if a character appears more than once.
No example for empty string. False?

- Data Structure
Hash representing characters in the string, ignoring non-alphabetical.
Bool representing if all letters have at least a value of 1 in the hash.

- Algorithm
- Create a hash with a key that is a string representing every character of the 
alphabet, and initialize it to 0.
- Iterate over every character of the string.
  - If the character is alphabetical, downcase it, and increment the value in 
  the hash, the character's key represents.
- If all values in the hash are greater than 0, return true.
- Otherwise return false
=end

def pangram?(string)
  letter_hash = {}
  ('a'..'z').each { |letter| letter_hash[letter] = 0 }

  string.each_char do |char|
    letter_hash[char] += 1 if letter_hash.keys.include?(char)
  end
  letter_hash.values.all? { |value| value > 0 }
end

# Examples
p pangram?('The quick, brown fox jumps over the lazy dog!') == true
p pangram?('The slow, brown fox jumps over the lazy dog!') == false
p pangram?("A wizard’s job is to vex chumps quickly in fog.") == true
p pangram?("A wizard’s task is to vex chumps quickly in fog.") == false
p pangram?("A wizard’s job is to vex chumps quickly in golf.") == true

my_str = 'Sixty zippers were quickly picked from the woven jute bag.'
p pangram?(my_str) == true
