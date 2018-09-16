# A method to reverse each word in a sentence, in place.

def reverse_words(my_words)

  if my_words.nil? || my_words.length == 1
    return my_words
  end

  start = 0
  ending = 0

  while ending < my_words.length

    until my_words[ending] == " " || my_words[ending].nil?
      ending += 1
    end

    i = start
    j = ending - 1

    while i < j
      temp = my_words[j]
      my_words[j] = my_words[i]
      my_words[i] = temp
      i += 1
      j -= 1
    end

    start = ending + 1
    ending += 1
  end

  return my_words
end
