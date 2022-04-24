=begin

input: is 2 strings

output: boolean

explicit: substrings must be of at least 2

implicit: we dont care about case


strings

algorithm
    method 1)
  1) generate all substrings of each string
    each_with_obect with index loop []
      idx.upto(size - 1) loop add to object
  2) add those substrings to an array

  method 2)
  1) & if empty, return false
=end


def substrings(str)
  letters = str.chars
  letters.each_with_object([]).with_index do |(subs, arr), idx|
    idx.upto(letters.size - 1) do |end_range|
      next if idx == end_range
      arr << letters[idx..end_range].join.downcase
    end
  end
end

def substring_test(str1, str2)
  str1_arr = substrings(str1)
  str2_arr = substrings(str2)
  intersect = str1_arr & str2_arr
  intersect.size > 0
end



