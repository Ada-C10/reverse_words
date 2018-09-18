require 'pry'
# A method to reverse each word in a sentence, in place.
def reverse_string(my_string)
  if my_string == nil || my_string.length <= 1
    return my_string
  else
    i = 0
    j = my_string.length - 1
    while i < j
      temp = my_string[i]
      my_string[i] = my_string[j]
      my_string[j]=temp
      i += 1
      j -= 1
    end
    return my_string
  end
end

# # Reverse strings and array.
# def reverse_words(my_words)
#   if my_words.length == nil
#     return my_words
#   else
#     g = 0
#     h = (my_words.length) -1
#     while g < h
#       temp = my_words[h]
#       my_words[h] = reverse_string(my_words[g])
#       my_words[g] = reverse_string(temp)
#       g+= 1
#       h -= 1
#       # binding.pry
#     end
#     return my_words
#   end
# end

def reverse_words(my_words)
  if my_words.length == nil
    return my_words
  else
    i = 0
    while i < my_words.length
      # my_words[i] = reverse_string(my_words[i])

      if my_words[i] == nil || my_words[i].length <= 1
        next
      else
        j = 0
        word = my_words[i]
        k = (word.length) - 1
        while j < k
          temp = word[j]
          word[j] = word[k]
          word[k]=temp
          j += 1
          k -= 1
        end
        my_words[i] = word

      end
      i += 1
    end
    return my_words
  end
end
