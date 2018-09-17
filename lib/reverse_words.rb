# A method to reverse each word in a sentence, in place.
require 'pry'

def reverse_words(my_words)

  return nil if my_words == nil
  return my_words if (my_words.length == 0 || my_words.length == 1)

  i = 0
  last = my_words.length - 1

  i += 1 while my_words[i] == " "

  while i < my_words.length

    start_of_word = i
    end_of_word = i

    until my_words[i + 1] == " " || end_of_word == last
      end_of_word += 1
      i += 1
    end

    temp = ""
    step = start_of_word
    backstep = end_of_word
    while step <= (start_of_word + end_of_word) / 2
      temp = my_words[step]
      my_words[step] = my_words[backstep]
      my_words[backstep] = temp
      step += 1
      backstep -= 1
    end

    i += 1

    i += 1 while my_words[i] == " "

  end
  return my_words
end
