=begin
Create a method that takes a string argument and returns a hash in which the 
keys represent the lowercase letters in the string, and the values represent 
how often the corresponding letter occurs in the string.

-P
input: string
output: hash

-E
only count lowercase letters, not uppercase or non alphabet
if empty string or string with no lowercase letters, return empty hash

-D
string -> array of characters -> count hash

-A
- initialize a count hash to have a default value of 0
- initialize a lowercase_letters variable with all the lowercase letters
- iterate over every character of the string
  - if the character is a lowercase letter, increment the count_hash[charaacter]
- return the count hash
=end

def count_letters(string)
  lowercase_letters = 'abcdefghijklmnopqurstuvwxyz'
  count_hash = Hash.new { |hash, key| hash[key] = 0 }

  string.chars.each do |char|
    count_hash[char] += 1 if lowercase_letters.include?(char)
  end

  count_hash
end

# Examples
expected = {'w' => 1, 'o' => 2, 'e' => 3, 'b' => 1, 'g' => 1, 'n' => 1}
p count_letters('woebegone') == expected

expected = {'l' => 1, 'o' => 1, 'w' => 1, 'e' => 4, 'r' => 2,
            'c' => 2, 'a' => 2, 's' => 2, 'u' => 1, 'p' => 2}
p count_letters('lowercase/uppercase') == expected

expected = {'u' => 1, 'o' => 1, 'i' => 1, 's' => 1}
p count_letters('W. E. B. Du Bois') == expected

p count_letters('x') == {'x' => 1}
p count_letters('') == {}
p count_letters('!!!') == {}
