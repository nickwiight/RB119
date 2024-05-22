=begin
Create a method that takes a string of digits as an argument and returns the 
number of even-numbered substrings that can be formed. For example, in the case 
of '1432', the even-numbered substrings are '14', '1432', '4', '432', '32', 
and '2', for a total of 6 substrings.

If a substring occurs more than once, you should count each occurrence as a 
separate substring.

-P
input: string of digits
output = integer representing count of even substrings

-E
empty string?
0? is it even? 

-D
strings -> array of strings -> integer count

-A
- initialize substrings to an array of all substrings
  - iterate over every character, parameter index
  - loop string length - current index times, parameter length
  - slice input string by index, length + 1
  - append slice to array
- iterate over every element in substrings
  - convert string to integer
  - if integer is even, increase count
return count
=end

def even_substrings(string)
  substrings(string).count { |sub| sub.to_i.even? }
end

def substrings(string)
  array = []
  string.length.times do |index|
    (string.length - index).times do |length|
      array << string[index, length + 1]
    end
  end
  array
end

# Examples
p even_substrings('1432') == 6
p even_substrings('3145926') == 16
p even_substrings('2718281') == 16
p even_substrings('13579') == 0
p even_substrings('143232') == 12
