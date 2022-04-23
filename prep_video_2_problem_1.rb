=begin

input: integer

output: integer


explicit rules --- create the next biggest number formed by the same digits.
if no bigger number can be created then return -1


digits array

if revere sort == num than -1
rindex of a number less than the last
=end


def next_bigger_num(int)
  dig = int.digits
  return -1 if dig.sort == dig
  operation = switch_indices(dig)
  dig[operation.first], dig[operation.last] = dig[operation.last], dig[operation.first]
  dig.reverse.join.to_i
end

def switch_indices(arr)
  arr.each_with_object([]).with_index do |(digit, indices), idx|
    switch = arr.index { |num| digit > num }
    if switch != nil
      indices << idx
      indices << switch
    end
  end
end


p next_bigger_num(2021)
