=begin
Create a method that takes an array of integers as an argument. The method 
should determine the minimum integer value that can be appended to the array so 
the sum of all the elements equal the closest prime number that is greater than 
the current sum of the numbers. For example, the numbers in [1, 2, 3] sum to 6. 
The nearest prime number greater than 6 is 7. Thus, we can add 1 to the array 
to sum to 7.

Notes:
- The array will always contain at least 2 integers.
- All values in the array must be positive (> 0).
- There may be multiple occurrences of the various numbers in the array.

-P
input: array of integers
output: integer

-E

-D

-A
- sum = sum of all elements of the array
- initialize index to sum + 1
- while index is not prime, increment index by 1
- subract sum from index and return that value
=end

def nearest_prime_sum(array)
  sum = array.sum
  index = sum + 1
  loop do
    break if prime?(index)
    index += 1
  end
  index - sum
end

def prime?(integer)
  return true if integer == 1
  return false if integer.even?
  return false if integer % 5 == 0 && integer > 5
  return false if integer.digits.sum % 3 == 0
  3.upto(integer / 2) do |i|
    return false if integer % i == 0
  end
  true
end

# Examples

p nearest_prime_sum([1, 2, 3]) == 1        # Nearest prime to 6 is 7
p nearest_prime_sum([5, 2]) == 4           # Nearest prime to 7 is 11
p nearest_prime_sum([1, 1, 1]) == 2        # Nearest prime to 3 is 5
p nearest_prime_sum([2, 12, 8, 4, 6]) == 5 # Nearest prime to 32 is 37

# Nearest prime to 163 is 167
p nearest_prime_sum([50, 39, 49, 6, 17, 2]) == 4
