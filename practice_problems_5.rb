=begin

input: string

output: a string

explicit:
Return the char that occurs the last often in a string
if a tie, do the char with the smalles index
case insenstive


implicit: count spaces and punctuation
return value is downcased


data struc: string
to an array


algo:
convert the string to an array --- with chars and downcase
tranform the characters into their counts --- count and map
index of the the lowest count --- min
arr[lowest idx]


=end

def least_common_char(str)
  characters = str.downcase.chars
  counts = characters.map { |char| characters.count(char) }
  lowest_idx = counts.index(counts.min)
  characters[lowest_idx]
end


p least_common_char("Hello World") == "h"
p least_common_char("Peter Piper picked a peck of pickled peppers") == "t"
p least_common_char("Mississippi") == "m"
p least_common_char("Happy birthday!") == ' '
p least_common_char("aaaaaAAAA") == 'a'