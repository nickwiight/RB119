=begin
Create a method that takes a non-empty string as an argument. The string 
consists entirely of lowercase alphabetic characters. The method should return 
the length of the longest vowel substring. 
The vowels of interest are "a", "e", "i", "o", and "u".

- Problem
Input: non-empty, lowercase alphabetic only string
Output: integer representing the length of a substring

- return a count of the longest substring with only vowels. 'y' is not considered 
a vowel.
- no request to mutate the incoming string

- Examples
- Return 0 if there are no vowels at all. Return 1 for a substring of 1 vowel.
- We are completely unconcered with consonants, even if they are not in the 
string at all.
- no spaces are given in the examples. Space is not an alphabetic character.

- Data Structure
Strings will be first used to create more strings. The length of these will be 
counted and turned into a string.

- Algorithm
- Iterate over every character of an incoming string.
- For every character determine if it is a vowel.
  - If the character is a vowel, add it to a substring variable.
  - If the character is a consonant, get the length of substring.
    - If the length of substring is longer than a longest_substring 
    variable, assign the length to longest_substring
- After all characters are looped, check one last time if substring's 
length is greater than longest_substring. If so, assign the length of 
substring to longest_length
- Return longest_substring
=end

def longest_vowel_substring(string)
  vowels = %w(a e i o u)
  longest_substring = 0
  substring = ''
  string.each_char do |char|
    if vowels.include?(char)
      substring << char
    else
      longest_substring = substring.length if substring.length > longest_substring
      substring = ''
    end
    longest_substring = substring.length if substring.length > longest_substring
  end
  longest_substring
end

# Examples
p longest_vowel_substring('cwm') == 0
p longest_vowel_substring('many') == 1
p longest_vowel_substring('launchschoolstudents') == 2
p longest_vowel_substring('eau') == 3
p longest_vowel_substring('beauteous') == 3
p longest_vowel_substring('sequoia') == 4
p longest_vowel_substring('miaoued') == 5
