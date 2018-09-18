# A method to reverse each word in a sentence, in place.

def reverse_words(my_words)
  if my_words == nil
    return nil
  end

  index = 0
  i = 0
  j = 0

  while index < my_words.length - 1
    i = index

    while my_words[index] != ' ' && my_words[index] != nil
      index += 1
    end

    j = index - 1

    while i < j
      temp = my_words[i]
      my_words[i] = my_words[j]
      my_words[j] = temp

      i += 1
      j -= 1
    end

    index += 1
  end

  return my_words

end
