require 'pry'

# def string_reverse(my_string)
#   if my_string == nil || my_string.length == 0
#     return my_string
#   end
#   array = my_string.split("")
#   length = array.length
#   i = 0
#   j = (length - 1)
#   holding = nil
#   while i < j
#     holding = array[i]
#     array[i] = array[j]
#     array[j] = holding
#     i += 1
#     j -= 1
#   end
#   joined_array = array.join("")
#   return joined_array
# end

# def reverse_words(my_words)
#   sentence = []
#   my_words.split.each do |word|
#     sentence << word
#   end
#
#   reversed = []
#   sentence.each do |word|
#     reversed << string_reverse(word)
#   end
#
#   final = ""
#   reversed.each do |word|
#     final << word + " "
#   end
#   return final
#
# end

# example = reverse_words("I strive to engineer the most efficient solutions.")
# puts example

def string_reverse(my_string, start_index, end_index)
  i = start_index
  j = end_index
  while i < j
    #flipflop characters using holding variable as a place to put one character while the other goes in its place.
    holding = my_string[i]
    my_string[i] = my_string[j]
    my_string[j] = holding

    #move up and move down the string.
    i += 1
    j -= 1
  end
  return my_string
end

def reverse_words(my_words)
  # if there's nothing to reverse...
  if my_words == nil || my_words == 0
    return my_words
  end

  i = 0
  length = my_words.length
  #run it as many times as there are characters
  while i < length
    # increase index if there are spaces, skipping the actual reversing
    while my_words[i] == ' ' && i < length
      i += 1
    end
    # Once finished skipping spaces, call that character the starting index.
    start_index = i

    # Find the end of the word.
    while my_words[i] != ' ' && i < length
      i += 1
    end
    end_index = i - 1

    reversed_string = string_reverse(my_words, start_index, end_index)
#
  end
# binding.pry
  return reversed_string
end

example = reverse_words("Hello my name is Carly")
puts "#{example}"
