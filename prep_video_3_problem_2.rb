=begin

input: array of strings

output: a substring

explicit rules: if there is no common prefix, return blank string
                all chars will be lowercase

implicit rules:


data: with an array. string elements

algorithm:

sort_by string.size

arr.first.chars.each.with.object(str)
  if all words at that index == this then add to str if not break
=end

def common_prefix(arr)
  arr = arr.sort_by { |word| word.size }
  first = arr.first.chars
  str = ''
  first.each_with_index do |letter, idx|
    arr.all? { |word| word[idx] == letter } ? str << letter : break
  end
  str
end
