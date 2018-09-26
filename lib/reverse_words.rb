# A method to reverse each word in a sentence, in place.
def reverse_words(my_words)
  if my_words.nil?
    return nil
  else
    i = 0
    until my_words[i] == nil
      if my_words[i] != " "
        k = i
        until my_words[k] == " " || my_words[k] == nil
          k += 1
        end
        j = k-1
        while i < j
          memo = my_words[i]
          my_words[i] = my_words[j]
          my_words[j] = memo
          i = i+1
          j = j-1
        end
        i = k+1
      else
        i += 1
      end
    end
    return my_words
  end
end
