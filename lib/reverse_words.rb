# A method to reverse each word in a sentence, in place.
def reverse_letters(my_string)

  return my_string if my_string.length == 1

  while my_string != nil
    i = 0
    j = (my_string.length - 1)
    while i < j
      temp = my_string[j]
      my_string[j] = my_string[i]
      my_string[i] = temp
      j -= 1
      i += 1
    end
    return my_string
  end
  return nil
end

def reverse_words(my_string)

  return my_string if my_string == nil

  results = ""
  i = 0
  temp = ""
  j = (my_string.length - 1)

  while i < my_string.length
    if i == j
      temp += my_string[i]
      results << reverse_letters(temp)
    elsif my_string[i] != " "
      temp += my_string[i]
    else
      results << reverse_letters(temp)
      temp = ""
      results += " "
    end
    i += 1
  end

  u = 0
  while u < results.length
    my_string[u] = results[u]
    u += 1
  end
  return my_string
end
