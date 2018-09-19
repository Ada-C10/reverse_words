# require 'pry'

# A method to reverse each word in a sentence, in place.

# # method using start index and end index
# def reverse_words(sentence)
#   if sentence == nil || sentence.length <= 1
#     return sentence
#   else
#     start_index = 0
#     finish_index = 0
#     word = []
#     word_index = 0
#
#     while start_index < sentence.length - 1
#
#       until sentence[word_index] == " "
#         finish_index += 1
#
#       end
#       finish_index - start_index?
#     end
#
# end

#Method C with split and map
def reverse_words(sentence)
  if sentence == nil || sentence.length < 1
    return sentence
  else
    split_sentence = sentence.split(" ")
    reversed_words = split_sentence.map {|word| reverse_string(word)}
    sentence = reversed_words.join(" ")
    # binding.pry
    return sentence
  end

  # Method C without split and map (second part)
    # i = 0
    # split_sentence.each do |word|
    #  reversed_word = reverse_string(word)
    #    # i = 0
    #   reversed_word.length.times do |letter|
    #     reversed_word[i] = sentence[i]
  #     end
  #   end
  # end
 end

# def reverse_words(sentence)
#   if sentence == nil || sentence.length <= 1
#     return sentence
#   else
#     index = 0
#     number_char = sentence.length
#
#     while index < number_char - 1
#       sentence_word = []
#
#       # word_index = 0
#       # if sentence[word_index] != " "
#         if sentence[index] != nil
#           sentence_word << sentence[index]
#           index += 1
#         elsif sentence[word_index] == " "
#           reverse_string[sentence_word]
#           index+=1
#         end
#         ##???
#          until sentence[word_index -1]
#         ##???
#         end
#       end




  #   # reverse_string method
  #   i = 0
  #   j = my_string.length - 1
  #   while i < j
  #     temp = my_string[i]
  #     my_string[i] = my_string[j]
  #     my_string[j]=temp
  #     i += 1
  #     j -= 1
  #   end
  #   return my_string
  # end # of reverse_string method

# end




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



# # # # Reverse strings and array.
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


# def reverse_words(my_words)
#   if my_words == nil
#     return my_words
#   else
#     i = 0
#     while i < my_words.length
#       # my_words[i] = reverse_string(my_words[i])
#
#       if my_words[i] == nil || my_words[i] == "" || my_words[i].length < 1
#         i += 1
#       else
#         j = 0
#         word = my_words[i]
#         k = (word.length) - 1
#         while j < k
#           temp = word[j]
#           word[j] = word[k]
#           word[k]=temp
#           j += 1
#           k -= 1
#         end
#         my_words[i] = word
#         i += 1
#       end
#
#     end
#     return my_words
#   end
# end

# def reverse_words(my_words)
#   if my_words == nil
#     return my_words
#   else
#     i = 0
#     while i < my_words.length
#       my_words[i] = reverse_string(my_words[i])
#       i+=1
#     end
#     return my_words
#   end
# end


# use .split?
