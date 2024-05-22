=begin
Create a method that takes a string of digits as an argument and returns the 
number of even-numbered substrings that can be formed. For example, in the case 
of '1432', the even-numbered substrings are '14', '1432', '4', '432', '32', 
and '2', for a total of 6 substrings.

If a substring occurs more than once, you should count each occurrence as a 
separate substring.

-Problem
Input: String containing only numeral digits
Output: Integer representing the count if substrings representing even numbers

Determine all substrings of the string, then count how many are even.
A substring only reads left to right, do not create substrings by appending a 
character from the left of a character.

- Examples
Examples do not have decimals. Working only with integers?

- Data Structure
Start with a string, create an array of substrings, count that array to create 
an integer to return.

- Algorithm
- Given a string, create an array representing all possible substrings
  - Iterate over every character in the string, with an index
  - For each index, loop from that index to the string's length
    - Create and append a slice of the string from the index of the main loop
    with a length equal to the second loops index.
- Iterate over every substring in the array.
  - Count the substring if it's integer conversion is even.
- return the count 
=end

def even_substrings(string)
  substrings(string).count { |substring| substring.to_i.even? }
end

def substrings(string)
  substrings = []
  string.chars.each_index do |index|
    1.upto(string.length - index) do |length|
      substrings << string[index, length]
    end
  end
  substrings
end

# Examples
p even_substrings('1432') == 6
p even_substrings('3145926') == 16
p even_substrings('2718281') == 16
p even_substrings('13579') == 0
p even_substrings('143232') == 12
