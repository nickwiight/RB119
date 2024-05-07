=begin
Create a method that takes an array of integers as an argument. The method 
should determine the minimum integer value that can be appended to the array 
so the sum of all the elements equal the closest prime number that is greater 
than the current sum of the numbers. For example, the numbers in [1, 2, 3] sum 
to 6. The nearest prime number greater than 6 is 7. Thus, we can add 1 to the 
array to sum to 7.

Notes:

    The array will always contain at least 2 integers.
    All values in the array must be positive (> 0).
    There may be multiple occurrences of the various numbers in the array.
- Problem
Input: array of integers
Output: Integer

Sum all numbers in the array, then find the smallest number that can be added 
to the sum to equal the next prime that is larger than the sum.

- Examples
- If the sum is prime, do not add zero
- Sums are relatively small, do we need to worry about compute time with larger
values?

-Data structure
Turn the array into integers and compare them.

- Algorithm
- Sum all values in the array and assign the value to sum.
- determine the nearest prime number over sum.
- return the difference between the prime number and sum.
=end

def nearest_prime_sum(array)
  sum = array.inject(&:+)
  prime = sum + 1

  until prime?(prime)
    prime += 1
  end

  prime - sum
end

def prime?(int)
  return true if int == 1

  half = int / 2

  2.upto(half) do |number|
    return false if int % number == 0
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
