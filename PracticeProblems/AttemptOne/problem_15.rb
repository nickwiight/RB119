=begin
Create a method that takes a string argument that consists entirely of numeric 
digits and computes the greatest product of four consecutive digits in the 
string. The argument will always have more than 4 digits.

- Problem
Input: String that is four or more numeric digits
Output: Integer representing the product of four consecutive digits

Find the largest product of four consecutive digits in the string, and return 
their product.

- Examples
- 0 is in none of the examples. Return 0?
- digits can repeat

- Data Structure
Create an array of substrings from the string. Convert to integers to multiply.
return the largest multiplication.

- Algorithm
-Iterate over the string to create substrings with a length of 4 and add them 
to an array.
-Iterate over the substring array
  -Convert the substring to an array of characters.
  -Transform the array into integers
  -Multiply the integers together
  -Append intger to new array
-Sort the integer array
-Return the last element of the sorted array
=end

def greatest_product(string)
  sub_strings = []

  string.length.times do |index|
    sub_string = string[index, 4]
    break if sub_string.length < 4

    sub_strings << sub_string
  end

  products = sub_strings.map do |sub_string|
    sub_string.chars.map { |char| char.to_i }.inject(&:*)
  end

  products.max
end

# Examples
p greatest_product('23456') == 360      # 3 * 4 * 5 * 6
p greatest_product('3145926') == 540    # 5 * 9 * 2 * 6
p greatest_product('1828172') == 128    # 1 * 8 * 2 * 8
p greatest_product('123987654') == 3024 # 9 * 8 * 7 * 6
