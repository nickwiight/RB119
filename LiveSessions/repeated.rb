# Check if a given string can be constructed by taking a substring of it and  
# appending multiple copies of the substring together

=begin
Check if a given string can be constructed by taking a substring of it and  
appending multiple copies of the substring together

- P
input - string
output - bool

- E
no test case for empty string
no information on capital letters

- D
It's strings all the way down

- A
Loop up to half string length times
(string.length / 2).times |length|
substring initialized to string[0, length]
multipled_substring = multiply substring by string.size / length
return string == multiplied_substring

- C

=end
def repeated_substring_pattern(string)
  1.upto(string.size / 2) do |length|
    substring = string[0, length]
    mult_substring = substring * (string.size / length)
    return true if mult_substring == string
  end

  false
end

p repeated_substring_pattern("abab") == true
p repeated_substring_pattern("aba") == false
p repeated_substring_pattern("aabaaba") == false
p repeated_substring_pattern("abaababaab") == true
p repeated_substring_pattern("abcabcabcabc") == true
