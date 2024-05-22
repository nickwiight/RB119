=begin
Create a method that takes a string argument that consists entirely of numeric 
digits and computes the greatest product of four consecutive digits in the 
string. The argument will always have more than 4 digits.

-P
input: string of numberic digits
output: integer

-E
0 in string? 

-D
string -> integer -> array of digits -> array of sums -> integer count

-A
- convert string to integer
- convert integer to array of digits
  - ruby reverses this array, but it doesn't matter here
- loop string's length - 4 times, parameter index
- slice 4 digits out of the array starting at index
- prduct the slice, append to a prducts array
- return the maximum in prducts array
=end

def greatest_product(string)
  digits = string.to_i.digits
  products = []
  (string.length - 3).times do |index|
    products << digits[index, 4].inject(&:*)
  end
  products.max
end

# Examples

p greatest_product('23456') == 360      # 3 * 4 * 5 * 6
p greatest_product('3145926') == 540    # 5 * 9 * 2 * 6
p greatest_product('1828172') == 128    # 1 * 8 * 2 * 8
p greatest_product('123987654') == 3024 # 9 * 8 * 7 * 6
