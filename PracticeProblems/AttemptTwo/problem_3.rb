=begin
Create a method that takes a string argument and returns a copy of the string 
with every second character in every third word converted to uppercase. Other 
characters should remain the same.

-P
input: string
output: manipulated string

Change a string so every second character in every thrid word is converted to 
uppercase. 

-E
Each upcased word tracks the second character individually.
Third word counting is base 1, not zero.
empty string? returns empty string?
non alphabet characters?

-D
Arrays of strings

-A
- Split the incoming string on each space and assign the new array to a 
word array variable
- iterate over every element in the word_array
  - If the element is index 2, 5, 8, ... index, upcase every second character
    - loop over every character in the word
    - If the index is odd, upcase it
join the words array with spaces
=end

#algorithm
def to_weird_case(string)
  word_array = string.split
  word_array.map!.with_index do |word, index|
    (index + 1) % 3 == 0 ? upcase_odd_characters(word) : word
  end
  word_array.join(' ')
end

def upcase_odd_characters(string)
  string.chars.each_with_index do |char, index|
    char.upcase! if index.odd?
  end.join
end

# Examples
original = 'Lorem Ipsum is simply dummy text of the printing world'
expected = 'Lorem Ipsum iS simply dummy tExT of the pRiNtInG world'
p to_weird_case(original) == expected

original = 'It is a long established fact that a reader will be distracted'
expected = 'It is a long established fAcT that a rEaDeR will be dIsTrAcTeD'
p to_weird_case(original) == expected

p to_weird_case('aaA bB c') == 'aaA bB c'

original = "Mary Poppins' favorite word is supercalifragilisticexpialidocious"
expected = "Mary Poppins' fAvOrItE word is sUpErCaLiFrAgIlIsTiCeXpIaLiDoCiOuS"
p to_weird_case(original) == expected
