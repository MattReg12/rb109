# input: array of lowercase strings

# output: array of single char strings


# explicit rules: char must appear in each of the original strings to be returned.
  # if char is repeated in each of the original strings, you must have n instances of that
  # single char in the return array

# implicit rules: no repeated chars means blank array.


# question --- will we ever have an array with just 0-1 inputs?


# min not 0

#& then count with map then min?

a = ['aabbaaaa', 'ccdddddd', 'eeffee', 'ggrrrrr', 'yyyzzz']

def common_chars(arr)
  letter_arr = arr.map { |word| word.split(//) }
  intersection = letter_arr.reduce(&:&)
  reps = repititions(intersection, arr)
  intersection.each_with_object([]).with_index do |(letter, final_arr), idx|
    reps[idx].times { final_arr << letter}
  end
end

def repititions(intersection, arr)
  intersection.map do |letter|
    count_arr = arr.map { |word| word.count(letter) }
    count_arr.min
  end
end

p common_chars(a)


