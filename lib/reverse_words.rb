# A method to reverse each word in a sentence, in place.
# you need to do two methods, first figuring out the start and end index of the words in the sentence.

# the first method is going to the same as reverse string

# second method is where we intialize the start and end index for each word

# we'll pass in the first method into the second to do the swap.

def string_reverse (my_string, s_index, e_index)
  i = s_index
  j = e_index

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
  if (my_words == nil || my_words.length == 0)
    return my_words
  end

  i = 0
  j = my_words.length

  while i < j # will do the while loop until the end of my_words
    while my_words[i] == " " && i < j
      i += 1
    end
    s_index = i

    while my_words[i] != " " && i < j
      i += 1
    end
    e_index = i - 1

    string_reverse(my_words, s_index, e_index)
  end
  return my_words
end

# Time complexity is O(n) and Space complexity is O(1)
