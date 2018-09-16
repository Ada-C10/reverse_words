# A method to reverse each word in a sentence, in place.
def reverse_words(my_words)
  if my_words == nil
    return nil
  elsif my_words == ""
    return ""
  end

  index = 0
  while my_words[index] != nil

    if my_words[index] == " "
      index += 1
      next
    end

    count = 0
    while my_words[index] != " " && my_words[index] != nil
      count += 1
      index += 1
    end

    beg_index = index - count
    end_index = index - 1
    temp = ""
    while beg_index < end_index
      temp = my_words[beg_index]
      my_words[beg_index] = my_words[end_index]
      my_words[end_index] = temp
      beg_index += 1
      end_index -= 1
    end
  end

  return my_words
end
