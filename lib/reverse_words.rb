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
def reverse_word(word)
  i = 0
  j = word.length - 1

  while i < j
    first_letter = word[i]
    last_letter = word[j]

    word[i] = last_letter
    word[j] = first_letter

    i += 1
    j -= 1
  end

  return word
end


def reverse_words(my_words)

    i = 0
    j = my_words.length
    
    while i < j
    if my_words[i] == " "

      while i < count

      end

      reversed_words << reverse_word(word)
    end

    count += 1
  end

   return 1my_words
end
