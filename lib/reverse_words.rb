# A method to reverse each word in a sentence, in place.
def reverse_words(my_words)

  if my_words != nil && my_words.length != 0
    index = 0
    start_index = 0
      while index < my_words.length
        # to check for spaces and to account for last word
        if my_words[index] == " " || index == my_words.length-1
          if my_words[index] == " "
            end_index = index - 1
          else
            end_index = index
          end

          count = 0
          #reversing the word
          while count <= (end_index - start_index)/2
            swapped_element = my_words[start_index + count]
            my_words[start_index + count] = my_words[end_index - count]
            my_words[end_index - count] = swapped_element
            count += 1
          end
          start_index = index + 1
        end
        index += 1
      end
  end
  return my_words

end
