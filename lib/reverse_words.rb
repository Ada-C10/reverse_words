# A method to reverse each word in a sentence, in place.
def string_reverse(my_string, beginning, ending)
  front_index = beginning
  back_index = ending

  while front_index < back_index
    front_value = my_string[front_index]
    back_value = my_string[back_index]

    my_string[front_index] = back_value
    my_string[back_index] = front_value

    front_index += 1
    back_index -= 1
  end
end

def reverse_words(my_words)

  if  my_words == nil || my_words.length < 2
    return my_words
  end

  i = 0
  j = 0

  while j < my_words.length

    i = j

    while my_words[j] == " "
      i += 1
      j += 1
    end

    while my_words[j] != " " && my_words[j] != nil
      j += 1
    end

    string_reverse(my_words, i, j-1)

    j += 1
  end

  return my_words
end
