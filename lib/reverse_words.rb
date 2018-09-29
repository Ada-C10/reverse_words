# A method to reverse each word in a sentence, in place.
require 'pry'
def reverse_words(my_words)
  i = 0
  j = 0

  if my_words == nil || my_words.length == 1 || my_words.length == 0
    return
  end

  loop do
        # binding.pry
    until my_words[i] != " "
      i += 1
    end
    j = i
    until my_words[j + 1] == " " || j == (my_words.length - 1)
      j += 1
    end
    # binding.pry
    string_reverse(my_words, i, j)
    i = j + 2
    # binding.pry
    break if i >= my_words.length - 1
  end
  return
end


def string_reverse(my_string, i, j)
  if my_string == nil || i == j
    return
  end
  temp = ""
  temp2 = ""
  while i < j do
    temp = my_string[i]
    temp2 = my_string[j]
    my_string[j] = temp
    my_string[i] = temp2
    i += 1
    j -= 1
  end
  return
end
