=begin
Create a method that takes a nonempty string as an argument and returns an 
array consisting of a string and an integer. If we call the string argument s, 
the string component of the returned array t, and the integer component of the 
returned array k, then s, t, and k must be related to each other such that 
s == t * k. The values of t and k should be the shortest possible substring and 
the largest possible repeat count that satisfies this equation.

You may assume that the string argument consists entirely of lowercase 
alphabetic letters.

-P
input: nonempty string (s)
output: array[string(t), integer(k)]

-E

-D
strings -> array[string, integer]

-A
- loop string.length / 2 round down times, parameter length
- create a slice of the input string starting at index 0, with a length of length
- multiply the slice by string.length / length
- return [slice, string.length / length] if the multiplied slice == input string
- if there's no early return, return [string, 1]
=end

def repeated_substring(string)
  1.upto(string.length / 2) do |length|
    slice = string[0, length]
    multiple = string.length / length
    return [slice, multiple] if slice * multiple == string
  end
  [string, 1]
end

# Examples
p repeated_substring('xyzxyzxyz') == ['xyz', 3]
p repeated_substring('xyxy') == ['xy', 2]
p repeated_substring('xyz') == ['xyz', 1]
p repeated_substring('aaaaaaaa') == ['a', 8]
p repeated_substring('superduper') == ['superduper', 1]
