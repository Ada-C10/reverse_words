# A method to reverse each word in a sentence, in place.

def reverse_letters(str, start_index, end_index)
  i = start_index
  j = end_index
  while i < j
    str[i], str[j] = str[j], str[i]
    i += 1
    j -= 1
  end
  return
end


def reverse_words(word)
  if word == nil
    return nil
  end
  i = 0
  length = word.length
  while i < length
    while word[i] == " " && i < length
      i += 1
    end
    start_index = i

    while word[i] != " " && i < length
      i += 1
    end
  end_index = i - 1

  reverse_letters(word, start_index, end_index)
  end
  return
end



# A method to reverse each word in a sentence, in place.

# def reverse_letters()

# def reverse_words(str)
#   i = 0
#   j = str.length - 1
#
#   while i < j
#     str[i], str[j] = str[j], str[i]
#     i += 1
#     j -= 1
#
#   end
#   return str
#
# end


# def reverse_words(str)
#   result = ""
#   temp = ""
#   i = 0
#
#   while i < str.length
#     if str[i] != " "
#       temp += str[i]
#     else
#       result = result + reverse_letters(temp) + str[i]
#       temp = ""
#     end
#     i +=1
#   end
#   result = result + reverse_letters(temp)
#   return

# end

# Helper method for partial string reversal
# Reverses the character from start_index to end_index
# def reverse_letters (str, start_index, end_index)
#   i = start_index
#   j = end_index
#   while i < j
#     # temp = my_string[i] # swap using temporary variable
#     # my_string[i] = my_string[j]
#     # my_string[j] = temp
#     # i += 1
#     # j -= 1
#
#     str[i], str[j] = str[j], str[i]
#        i += 1
#        j -= 1
#   end
#   return
# end

# A method to reverse each word in a sentence, in place.
# Time complexity: O(n) where n is the length of my_words
# - Each character in my_words gets scanned once to find the beginning and end of
# a word. For this, the characters are compared to the white space, and character
# count is tracked. This takes O(n) time.
# - Once the beginning and end for a word is deduced, partial_reverse is called.
# partial_reverse reverses each word and takes O(k) time if there are k characters
# in the word. At the most n characters will get reversed. So, this takes O(n) time.
# - Overall, each character gets visited twice, taking O(2n) time or O(n) time.
# Space complexity: O(1) - the auxiliary storage size does not increase as the
# input length increases.
# def reverse_words(words)
  # return if (my_words == nil || my_words.length == 0)
#
#   i = 0
#   length = words.length
#   while i < length # until end of input
#     while words[i] == ' ' && i < length # accounting for preceeding spaces
#       i += 1
#     end
#     start_index = i # start of word identified
#
#     while words[i] != ' ' && i < length # looking for end of word
#       i += 1
#     end
#     end_index = i - 1 # word ends before the white space or at length-1
#
#     reverse_letters(words, start_index, end_index) # reverse the word
#   end
#   return
# end
