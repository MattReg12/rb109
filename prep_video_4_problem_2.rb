=begin

input: 2 strings


output: boolean


explicit: only lower case letters. no punctuation or digits


implicit:



data struct: string. an array



algo:
init an array to hold two arrays are strings.chars
all? count of arr2 == arr 1

iterate through a chars of 2nd str
copy of the first, find on that string
delete_at that index or break if nil


=end

def scramble(str1, str2)
  arr1 = str1.chars
  arr2 = str2.chars
  arr2.all? { |letter| arr1.count(letter) >= arr2.count(letter) }
end

def scramble_two(str1, str2)
  arr1 = str1.chars
  str2.chars.each do |letter|
    index = arr1.index(letter)
    return false if index.nil?

    arr1.delete_at(index)
  end
  true
end

x1 = Time.now
p scramble_two('javaass', 'jjss')
p scramble_two('rkqodlw', 'world')
p scramble_two('cedewaraaossoqqyt', 'codewars')
p scramble_two('katas', 'steak')
p scramble_two('scriptingjava', 'javascript')
p scramble_two('scriptjava', 'javascript')
x2 = Time.now

p x2 - x1

x3 = Time.now
p scramble('javaass', 'jjss')
p scramble('rkqodlw', 'world')
p scramble('cedewaraaossoqqyt', 'codewars')
p scramble('katas', 'steak')
p scramble('scriptingjava', 'javascript')
p scramble('scriptjava', 'javascript')
x4 = Time.now

p x4 - x3


