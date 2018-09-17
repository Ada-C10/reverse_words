# Share and explain the time and space complexities for your solution.
# The time complexity is O(n) because it's two loops that are linear so it's O(n) + O(n)
# The space complexity is O(1) because it's outputting the same amount as input

def reverse_word(string, array)
  i = string[0]
  j = string[-1]
  while i < j
    placeholder = array[i]
    array[i] = array[j]
    array[j] = placeholder
    i += 1
    j -= 1
  end
end

def reverse_words(my_string)
  if my_string.nil? || my_string == ""
    return my_string
  end

  #COLLECT INDEX NUMBERS FOR EACH WORD
  k = 0
  word_index = []
  while k < my_string.length
    if my_string[k] != " "
      word_index << k
    end
    k +=1
  end

  #Go through each index for each word and put that word into an array

  #Determine that a word has ended by incrementing the indexes and a counter variable and comparing if they match

  i = 0
  j = word_index[0]
  word = []
  while i < word_index.length
    if word_index[i] == j

      word << word_index[i]
    else
      #When a word has ended, reverse that entire word in the array using the saved indexs of each word letter
      reverse_word(word, my_string)
      #Set up counter variable and word_index to match the start of the next word
      j = word_index[i] - 1
      i -= 1
      #Reset word array after word has reversed
      word = []
    end
    i += 1
    j += 1
    #There will be on last word left after this
  end
  #Reverse the last word
  reverse_word(word, my_string)
  return my_string

end
