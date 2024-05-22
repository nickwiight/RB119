=begin
Create a method that takes a non-empty string as an argument. The string 
consists entirely of lowercase alphabetic characters. The method should return 
the length of the longest vowel substring. The vowels of interest are 
"a", "e", "i", "o", and "u".

-P
input: nonempty string
output: integer representing longest vowel substring

-E
no vowels, return 0

-D
string -> array of characters -> array of integers(count) -> integer

-A
- initialize a copy of the input string, named copy
- while copy length > 0
  - pop first character
    - if that character is a vowel, add it to a vowel string variable
    - else add vowel string to an array, and empty vowel_string
- if vowel string length > 0, add it to the array
- transform the array to each element's length
- return the maximum value of the array
=end

def longest_vowel_substring(string)
  copy = string.dup.chars
  substrings_array = []
  vowel_string = ''

  while copy.length > 0
    letter = copy.shift

    if 'aeiou'.include?(letter)
      vowel_string << letter
    else
      substrings_array << vowel_string
      vowel_string = ''
    end
  end

  substrings_array << vowel_string if vowel_string.length > 0

  substrings_array.map { |substring| substring.length }.max
end

# Examples
p longest_vowel_substring('cwm') == 0
p longest_vowel_substring('many') == 1
p longest_vowel_substring('launchschoolstudents') == 2
p longest_vowel_substring('eau') == 3
p longest_vowel_substring('beauteous') == 3
p longest_vowel_substring('sequoia') == 4
p longest_vowel_substring('miaoued') == 5
