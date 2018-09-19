# A method to reverse each word in a sentence, in place.

def reverse_words(my_words)
  # raise NotImplementedError
  first_index = 0
  last_index = 0

  return nil if my_words == nil

  total_indices = my_words.length - 1

  while my_words[last_index] != nil

    while last_index < total_indices
      if my_words[last_index + 1] == " "
        break
      else
        last_index += 1
      end
    end

    my_words = reverse(my_words, first_index, last_index)

    last_index += 1

    while my_words[last_index] == " "
      last_index += 1
    end
    first_index = last_index

  end

  return my_words
end


def reverse(my_words, first_index, last_index)
  temp = " "

  while first_index < last_index
    temp = my_words[first_index]
    my_words[first_index] = my_words[last_index]
    my_words[last_index] = temp

    first_index += 1
    last_index -= 1
  end

  return my_words
end
