require 'pry'
# A method to reverse each word in a sentence, in place.
def reverse_words(my_words)
  if my_words == nil || my_words == "" || my_words.length == 1
    return my_words
  else
    index = 0
    start_index = 0
    while my_words[index] != nil
      index += 1
    end
    end_index = index - 1
    return string_reverse(my_words, start_index, end_index)
  end
end

def string_reverse(my_string, start_index, end_index)
  if my_string == nil || my_string == "" || my_string.length == 1
    return my_string
  else
    length = my_string.length
    i = start_index
    j = end_index
    while i < j
      # swap in place
      char = my_string[i]
      my_string[i] = my_string[j]
      my_string[j] = char
      # my_string[i] = my_string[i] + my_string[j]
      # binding.pry
      # my_string[j] = my_string[i] - my_string[j]
      # my_string[i] = my_string[i] - my_string[j]
      i += 1
      j -= 1
    end
  end
  return my_string
end
