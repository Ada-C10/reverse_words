# A method to reverse each word in a sentence, in place.

=begin
think of finding:
first index of the word
last index of the word
be mindful of finding the spaces before, after, and in between the words
=end


def reverse_words(my_words)
  return nil if my_words == nil
  return '' if my_words == ''

  i = 0
  all_words_end = my_words.length

  while i < all_words_end

    while my_words[i] == ' ' && i < all_words_end
      i += 1
    end

    start_of_word = i

    while my_words[i] != ' ' && i < all_words_end
      i += 1
    end

    end_of_word = i - 1

    reverse_string(my_words, start_of_word, end_of_word)
  end

  return my_words

  raise NotImplementedError
end


# helper method, string reversal method in place
def reverse_string(string, start_of_word, end_of_word)

  i = start_of_word
  j = end_of_word

  while i < j
    temp = string[i]
    string[i] = string[j]
    string[j] = temp

    i += 1
    j -= 1
  end

  return string
end


=begin

Time complexity is O(2n) where n is the length of the input (my_words).
We drop the constant 2, and get O(n).

Space complexity is contant O(1), because it doesn't matter if the input increases,
the storage remains the same.

=end
