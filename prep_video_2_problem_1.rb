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

  operation = []
  dig.each_with_index do |digit, idx|
    switch = dig.index { |num| digit > num }
    break operation = [idx, switch] if switch != nil
  end
  dig[operation.first], dig[operation.last] = dig[operation.last], dig[operation.first]
  dig.reverse.join.to_i
end


p next_bigger_num(2021)
