# A method to reverse each word in a sentence, in place.
def reverse_words(my_words)
  if my_words == nil || my_words.length == 0
    return my_words
  end

  i = 0
  j = 0
  max = 0
  
  until max == my_words.length - 1
    until my_words[i] != " "
      i += 1
      j += 1
    end

    until my_words[j + 1] == " " || j == my_words.length - 1
      j += 1
    end

    max = j

    while i < j
      x = my_words[i]
      my_words[i] = my_words[j]
      my_words[j] = x
      i += 1
      j -= 1
    end

    i = max + 1
  end
end
