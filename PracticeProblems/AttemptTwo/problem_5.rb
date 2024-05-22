=begin
Create a method that takes a string argument and returns the character that 
occurs most often in the string. If there are multiple characters with the same 
greatest frequency, return the one that appears first in the string. When 
counting characters, consider uppercase and lowercase versions to be the same.

-P
input: string
output: single character string

Return the letter that appears the most often in a string. 

-E
empty string?
non alphabet characters?
returned letter should always be downcased

-D
hash, key is the count, value is an array of letters

-A
- create a count hash
- create a downcased variable assigned the downcased input string
- create an array of all characters of the downcased string
- make the character array only contain unique values
- iterate over every element of the unique characters array
  - for each element, count how many times the element appears in the downcased 
  string
  - count_hash[count] assign the element
- get the maximum key of the count hash
- return the first element of the value of the minimum key of the count hash
=end

def most_common_char(string)
  count_hash = Hash.new { |hash, key| hash[key] = [] }
  downcased_string = string.downcase

  downcased_string.chars.uniq.each do |char|
    count = downcased_string.count(char)
    count_hash[count] << char
  end

  minimum_key = count_hash.keys.max
  count_hash[minimum_key].first
end

# Examples
p most_common_char('Hello World') == 'l'
p most_common_char('Mississippi') == 'i'
p most_common_char('Happy birthday!') == 'h'
p most_common_char('aaaaaAAAA') == 'a'

my_str = 'Peter Piper picked a peck of pickled peppers.'
p most_common_char(my_str) == 'p'

my_str = 'Peter Piper repicked a peck of repickled peppers. He did!'
p most_common_char(my_str) == 'e'
