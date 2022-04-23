=begin

input: array of integers

output: an integer

explicit rules:
  return the maximum sum of contiguous ints
  return 0 if all elements are negative

implicit rules:
  if blank array, return 0


brute force:
  loop sum all the contiguous ints



data structure: array

iterate though the array starting at 0.
  index up to size - 1. sum a slice of the orignal array
  if sum > max, max = sum

=end



def max_sequence(arr)
  return 0 if arr.all? { |num| num <= 0 }

  max_sum = 0
  arr.each_with_index do |num, idx|
    idx.upto((arr.size - 1)) do |end_range|
      sum = arr[idx..end_range].sum
      max_sum = sum if sum > max_sum
    end
  end
  max_sum
end
