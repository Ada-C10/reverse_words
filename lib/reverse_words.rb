# # A method to reverse each word in a sentence, in place.
require 'pry'


# def reverse_words(my_words)
#   if my_words == nil
#     return nil
#   end
#
#   i = 0
#   j = my_words.length - 1
#
#   while i < j
#     first_letter = my_words[i]
#     last_letter = my_words[j]
#
#     my_words[i] = last_letter
#     my_words[j] = first_letter
#
#     i += 1
#     j -= 1
#   end
#
# end

################################

def reverse_one_word(word, index)

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
  if my_words.nil?
     return nil
  end

  k = 0
  l = my_words.length

  reverse_one_word(my_words, l)

    # while i < j
    #   if my_words[i] == " " && i != 0
    #     reverse_one_word(my_words, i)
    #       while (i + 1) < j
    #         reverse_one_word(my_words, j)
    #       end
    #     else
    #       reverse_one_word(my_words, j)
    #   end
    #   i += 1
    # end

end
