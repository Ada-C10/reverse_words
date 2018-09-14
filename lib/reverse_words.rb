# A method to reverse each word in a sentence, in place.

#index set to 0, loop through until you get to a space
#once you're on a space record that index and and set your second index to the index of that space minus one
# then begin looping through the word to reverse the letters
require 'pry'


def reverse_words(my_words)
  return nil if my_words == nil

  i = 0
  j = 0
  until my_words[i-1] == nil

    if my_words[i] == " " || my_words[i] == nil

      m = j
      k = (i - 1)
      while m < k
        temp = my_words[m]
        my_words[m] = my_words[k]
        my_words[k] = temp
        m += 1
        k -= 1
      end
      j = i + 1

    end
    i += 1

  end

  return my_words
end
