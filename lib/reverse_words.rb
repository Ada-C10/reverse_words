# # A method to reverse each word in a sentence, in place.
require 'pry'

def reverse_one_word(word, index)
  if word == nil
     return nil
  end

  i = 0
  while i < index
    first_letter = word[i]
    last_letter = word[index]

    word[i] = last_letter
    word[index] = first_letter

    i += 1
    index -= 1
  end

  return word
end

def reverse_words(my_words)
  if my_words == nil
     return nil
  end

  z = 0
  y = my_words.length


    while z < y
      if my_words[z] == " " && z != 0
        reverse_one_word(my_words, y)
          while (z + 1) < y
            reverse_one_word(my_words, y)
          end
        else
          reverse_one_word(my_words, y)
      end
      z += 1
    end

end
