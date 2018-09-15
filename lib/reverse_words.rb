require 'pry'
# A method to reverse each word in a sentence, in place.
def reverse_words(my_words)
  # if !my_words.nil? && !my_words.empty?
    # get length of all words combined
    len_arr = my_words.length
    # set iterator
    iterator = 0
    i = 0
    # binding.pry
    # iterate until '' encountered
    while iterator <= len_arr
      if my_words[iterator] == '' || iterator == len_arr
        spc_val = iterator
        binding.pry
        # pass iterator value, found space val, and my_words to helper method
        reverse_a_word(i, spc_val, my_words)
      end
      iterator += 1
      i += 1
    end
    # binding.pry
    return my_words
    # else return nil
  # end
end


def reverse_words(my_words)
  while i < (spc_val - 1)
    temp = my_words[i]
    my_words[i] = my_words[spc_val - 1]
    my_words[spc_val - 1] = temp
    i += 1
    spc_val -= 1
  end
  return my_words

end
