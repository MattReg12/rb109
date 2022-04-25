=begin

input: array of numbers

output: another array of numbers

explicit: with the counts of how many elements in the array are smaller than itself

dupe values are counted only once


implicit:

data structure: an array

algo:
transforming = map

idea 1)
init an outside of with uniq called on it.
taking a count the smaller elements of an outside array

idea 2)
sort our uniq array.
find the index position of that num

=end

def smaller_numbers_than_current(arr)
  helper_arr = arr.uniq.sort
  arr.map do |num|
    helper_arr.index(num)
  end
end


p smaller_numbers_than_current([8,1,2,2,3]) == [3, 0, 1, 1, 2]
p smaller_numbers_than_current([1,4,6,8,13,2,4,5,4]) == [0, 2, 4, 5, 6, 1, 2, 3, 2]
p smaller_numbers_than_current([7,7,7,7]) == [0,0,0,0]
p smaller_numbers_than_current([6,5,4,8]) == [2, 1, 0, 3]
p smaller_numbers_than_current([1]) == [0]