def to_weird_case(string)
  words_array = string.split
  words_array.map.with_index do |word, index|
    (index + 1) % 3 == 0 ? capitalize_every_other_letter(word) : word
  end.join(' ')
end

def capitalize_every_other_letter(word)
  word.chars.map.with_index do |letter, index|
    index.odd? ? letter.upcase : letter
  end.join
end

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
