=begin

input: string

output: integer



explicit: find the length of the longest substring where its a palindrom
0 size returns 0

implicit: there are no palindromes then return 1


data struc.  string.
array

algo:
string into chars array
double loop each_with_object_with index and upto loop. to create an array where it
generates all the substrings but it only adds palindromes to return value

max_by size

=end



def longest_palindrome(str)
  return 0 if str.size == 0

  arr = str.chars
  palindromes = arr.each_with_object([]).with_index do |(letter, palindromes), idx|
    idx.upto(arr.size - 1) do |end_range|
      substring = arr[idx..end_range]
      palindromes << substring if substring == substring.reverse
    end
  end
  palindromes.max_by { |palindrome| palindrome.size }.size
end

p longest_palindrome('a')
p longest_palindrome('aa')
p longest_palindrome('baa')
p longest_palindrome('aab')
p longest_palindrome('baabcd')
p longest_palindrome('baablkj12345432133d')