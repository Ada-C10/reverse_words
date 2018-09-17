# A method to reverse each word in a sentence, in place.
def reverse_words(my_words)

  # i divied up my thought process this way:
  # before string[0] --> first space (occurs 1x)
  # previous space --> current space (can occur multiple times)
  # final space --> after string[-1] (occurs 1x)

  # gotta check for nil
  if my_words == nil
    return nil
  end

  # initialize some vars upfront; important for scope
  length = my_words.length
  counter = 0
  space_prev = -1 #<-- set up for first loop; like a pretend space before string's first char

  # we need to get to nil for beyond end of string, which occurs when counter == length.
  # so once counter > length, we want loop to break
  until counter > length
    if my_words[counter] == " "  || my_words[counter] == nil

      space = counter # <-- index where we found the space

      index_big = (space - 1) # <-- last char of word
      word_len = (index_big - space_prev) # <-- word length (not inclusive)
      index_small = (index_big - word_len) + 1 # <-- first char of word (inclusive)

      # normal string reverse business
      while index_small <= index_big

        temp_char = my_words[index_small]
        my_words[index_small] = my_words[index_big]
        my_words[index_big] = temp_char

        index_small += 1
        index_big -= 1
      end

      space_prev = space # <-- becomes previous space index; allows later comparison if new space is found
    end

    counter += 1 # <-- continue to iterate through string no matter what
  end

  return my_words # <-- reversed in place
end
