=begin

input:  string

output: another string


explicit: convert every 2nd char of every 3rd word to uppercase
other characters are to remain the same


implicit:
if there are no 2nd letters in a word, nothing is done
if something is already upcased, nothing is done


data struc: string
an array

algo:
split this string on spaces into an array
transforming the values of every 3rd word to upcase every 2nd char (helper method)

keep remaning words the same
ternary operator
convert the array back into a string


=end

def upcase_odd_indicies(str)
  letter = str.chars
  word = letter.map.with_index do |char, idx|
    idx.odd? ? char.upcase : char
  end
  word.join
end

def to_weird_case(str)
  words = str.split
  sentence = words.map.with_index do |word, idx|
    is_third_word = ((idx + 1) % 3).zero?
    is_third_word ? upcase_odd_indicies(word) : word
  end
  sentence.join(' ')
end


p to_weird_case('Lorem Ipsum is simply dummy text of the printing') == 'Lorem Ipsum iS simply dummy tExT of the pRiNtInG'
p to_weird_case(
  'It is a long established fact that a reader will be distracted') == 'It is a long established fAcT that a rEaDeR will be dIsTrAcTeD'
p to_weird_case('aaA bB c') == 'aaA bB c'
p to_weird_case(
  'Miss Mary Poppins word is supercalifragilisticexpialidocious') == 'Miss Mary POpPiNs word is sUpErCaLiFrAgIlIsTiCeXpIaLiDoCiOuS'