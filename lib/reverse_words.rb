#helper method
def word_reverse(my_string, right_index, left_index)

  return if (my_string == nil || my_string.length == 0 )
  return my_string if (left_index == right_index)

  # right = 0
  # left = string.length - 1
  right = right_index
  left = left_index
  while right < left
    left_container = my_string[left]
    my_string[left] = my_string[right]
    my_string[right] = left_container
    right += 1
    left -= 1
  end
  return my_string
end
re
def reverse_words(my_words)

  return if (my_words == nil || my_words.length == 0)

  right_index = 0
  left_index = 0

  while left_index < my_words.length

    while my_words[right_index] == ' ' && right_index < my_words.length
      right_index += 1
    end

    left_index = right_index + 1

    while my_words[left_index]!= ' ' && left_index < my_words.length
      left_index += 1
    end

    left_index -= 1

    word_reverse(my_words, right_index, left_index)

    right_index = left_index + 1
  end

  return my_words

end
