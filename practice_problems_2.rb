=begin

input: array of integers


output: integer or nil


explicit: mininum sum of 5 straight integers

if array < 5 size return nil


implicit:


data struc: an array

algo:
guard clause to return -1

init a blank array
4.upto(size - 1)  |end_range|
  slice arr.sum

build a new array with the sums of 5 consecutive integers


=end


def minimum_sum(arr)
  return nil if arr.size < 5

  mininums = []
  4.upto(arr.size - 1) do |end_range|
    start_range = end_range - 4
    mininums << arr[start_range..end_range].sum
  end
  mininums.min
end

p minimum_sum([1, 2, 3, 4]) == nil
p minimum_sum([1, 2, 3, 4, 5, 6]) == 15
p minimum_sum([55, 2, 6, 5, 1, 2, 9, 3, 5, 100]) == 16
p minimum_sum([-1, -5, -3, 0, -1, 2, -4]) == -10