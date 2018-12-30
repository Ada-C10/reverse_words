# A method to reverse each word in a sentence, in place.

def partial_reverse(my_string, starting, ending)
  i = starting
  j = ending
  while i < j
    temp = my_string[i]
    my_string[i] = my_string[j]
    my_string[j] = temp
    i += 1
    j -= 1
  end
  return
end

def reverse_words(my_words)
  return if (my_words == nil || my_words.length == 0)

  i = 0
  total = my_words.length
  while i < total
    while my_words[i] == ' ' && i < total
      i += 1
    end
    start_index = i

    while my_words[i] != ' ' && i < total
      i += 1
    end
    end_index = i - 1

    partial_reverse(my_words, start_index, end_index)
  end
  return
end
