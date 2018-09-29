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
  return if my_words == nil

  i = 0
  length = my_words.length

  while i < length
    while my_words[i] == ' ' && i < length
      i += 1
    end

    beginning = i

    while my_words[i] != ' ' && i < length
      i += 1
    end

    ending = i - 1

    string_reverse(my_words, beginning, ending)
  end
  return my_words
end
