require 'pry'
# A method to reverse each word in a sentence, in place.
def reverse_words(my_words)
  if my_words == nil || my_words == "" || my_words.length == 1
    return my_words
  end
  i = 0
  while i < my_words.length
    start_index = 0
    end_index = 0
    while my_words[i] == " "
      i += 1
    end
    if my_words[i] != " "
      start_index = i
    end
    # creates an infinitive loops
    while my_words[i + 1] != " " && my_words[i + 1] != nil
      i += 1
    end
    end_index = i
    string_reverse(my_words, start_index, end_index)
    i += 1
  end
  return
end

def string_reverse(my_string, start_index, end_index)
  if my_string == nil || my_string == "" || my_string.length == 1
    return my_string
  else
    i = start_index
    j = end_index
    while i < j
      # swap in place
      char = my_string[i]
      my_string[i] = my_string[j]
      my_string[j] = char

      i += 1
      j -= 1
    end
  end
  return my_string
end
