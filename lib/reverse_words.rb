#helper method
def word_reverse(my_string, right_index, left_index)

  return if (my_string.length == 0 || my_string = 0)
  return my_string if (my_string.length == 1)

  # right = 0
  # left = string.length - 1
  right = right_index
  left = left_index
  while right < left
    left_container = my_string[right]
    my_string[left] = my_string[right]
    my_string[right] = left_container
    right += 1
    left -= 1
  end
  return my_string
end



# A method to reverse each word in a sentence, in place.
def reverse_words(my_words)

  return if (my_words.length == 0 || my_words == nil)

  start = 0

  while start < my_words.length

    while my_words[start] == " "
      start += 1
    end

    right_index = start

    left_index = right_index + 1

    while my_words[left_index]!= " " && left_index < my_words.length
      left_index += 1
    end

    word_reverse(my_words, right_index, left_index)
  end

  return my_words

end
