=begin

input: array of integers

output: integer that represents an index of the input array

explicit: Find an element of the array where the sum of the elements to the right and the sum of the
elements to the left is equal

if that does not exist, then return -1

empty arrays are equal to 0

implicit


data struct: array


algo
iteration
sum the left, then sum the right if equal then return index

init 2 variables
left sum
right sum
if index is 0 then left_sum is 0
if index is max then right_sum is 0


=end

def find_even_index(arr)
  left_sum = nil
  right_sum = nil
  arr.each_with_index do |num, idx|
    idx.zero? ? left_sum = 0 : left_sum = arr[0..idx - 1].sum
    idx == (arr.size - 1) ? right_sum = 0 : right_sum = arr[idx + 1..-1].sum
    return idx if left_sum == right_sum
  end
  -1
end
