=begin

input: array of integers

output: smaller portion of the original array of integers

explicit rules: return the 2 integers that are closest to each other

implicit rules: if tie, lower indiced ints


data struc: array


algo:

double loop
initialize a nested array, the first element is going to the lowest difference
the 2nd element is going to be an array of the return values for that difference
if nested array.first is > than difference, reassign it

return.last

=end

def closest_numbers(arr)
  min = 0
  elements = []
  arr.each_with_index do |num, idx|
    (idx + 1).upto(arr.size - 1) do |second_num|
      difference = (num - arr[second_num]).abs
      if elements.empty?
        min = difference
        elements = [num, arr[second_num]]
      elsif difference < min
        min = difference
        elements = [num, arr[second_num]]
      end
    end
  end
  elements
end

p closest_numbers([5, 25, 15, 11, 20]) == [15, 11]
p closest_numbers([19, 25, 32, 4, 27, 16]) == [25, 27]
p closest_numbers([12, 7, 17]) == [12, 7]