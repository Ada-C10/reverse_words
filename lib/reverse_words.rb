#helper method
def word_reverse(my_string, right_index, left_index)

  return if (my_string.length == 0 || my_string == nil)
  return my_string if (my_string.length == 1)

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



# A method to reverse each word in a sentence, in place.
def reverse_words(my_words)

  return if (my_words.length == 0 || my_words == nil)

  counter = 0

  while counter < my_words.length

    while my_words[counter] == ' ' && counter < my_words.length
      counter += 1
    end

    right_index = counter

    while counter!= ' ' && counter < my_words.length
      counter += 1
    end

    left_index = counter - 1


    word_reverse(my_words, right_index, left_index)
  end

  return my_words

end
