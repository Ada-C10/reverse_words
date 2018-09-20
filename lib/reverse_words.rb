
#Algorithm Plan:
#Helper method that takes the starting index of a word, the ending index of a word and the string
#This helper method will reverse the words in place. There will be a loop that runs until the starting
#index becomes equal to the ending index, and each time through the loop we will use a temp value so that
#we can set the item at one index to the other. Then increment starting index by one and descrease ending index by one.

def reverse_word(start_i, end_i, all_words)
  while start_i < end_i
    temp = all_words[start_i]
    all_words[start_i] = all_words[end_i]
    all_words[end_i] = temp
    start_i += 1
    end_i -= 1
  end
  return all_words
end



#https://github.com/Ada-C10/reverse_words/blob/solution/lib/reverse_words.rb

def reverse_words(my_words)
  return if my_words == nil || my_words.length == 0

  i = 0
  while i < my_words.length
    while my_words[i] == " " && i < my_words.length
      i += 1
    end
    s = i

    while my_words[i] != " " && i < my_words.length
      i += 1
    end
    e = i - 1

    reverse_word(s, e, my_words)
  end

  return my_words
end
