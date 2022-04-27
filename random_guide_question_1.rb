=begin


0.upto(size - 1)
move index -1 to block arg value of the upto loop

initialize a variable for our times method to be called on as arr.size / 2
init a reverse iterator at -1
times method
multiple assignement with block arguments of the times and the negative iterator
ri -= -1
return the arr

=end



def non_api_arr_reverse(arr)
  assignments = arr.size / 2
  right_index = -1
  assignments.times do |left_index|
    arr[left_index], arr[right_index] = arr[right_index], arr[left_index]
    right_index -= 1
  end
  arr
end

p non_api_arr_reverse([1, 2, 3, 4, 5, 6, 7, 8])