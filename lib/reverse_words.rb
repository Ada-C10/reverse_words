# A method to reverse each word in a sentence, in place.

def reverse_letters(words, start_index, end_index)
  i = start_index
  j = end_index
  while i < j
    words[i], words[j] = words[j], words[i]
    i += 1
    j -= 1
  end
  return
end
def reverse_words(str)
  if str == nil
    return nil
  end
  length = str.length
  i = 0
  while i < length
    while str[i] == " " && i < length
      i += 1
    end
    start_index = i

    while str[i] != " " && i < length
      i += 1
    end
    end_index = i - 1

    reverse_letters(str, start_index, end_index)
  end
  return
end
