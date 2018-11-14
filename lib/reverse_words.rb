require 'pry'

# A method to reverse each word in a sentence, in place.
def reverse_words(my_words)
  return my_words if my_words == nil

# Array holds index of all " " and index of last character
  index_of_spaces = []
  my_words.length.times do |i|
    if my_words[i] == " "
      index_of_spaces << i
    end
  end
  index_of_spaces << my_words.length

  low = 0
  high = index_of_spaces[0]-1

  index_of_spaces.length.times do |i|
    while low < high
      temp = my_words[low]
      my_words[low] = my_words[high]
      my_words[high] = temp
      low += 1
      high -= 1
    end
    if i == index_of_spaces.length-1
      return my_words
    end
    low = index_of_spaces[i]+1
    high = index_of_spaces[i+1]-1
  end
end
