require 'pry'
def reverse_words(my_words)
  if !my_words.nil? && !my_words.empty?
    full_length = my_words.length
    index = 0
    iter = 0
    while index <= full_length
      if my_words[index] == ' ' || index == full_length
        word_end = index
        reverse_single_word(iter, word_end, my_words)
        iter = index + 1
      end
      index += 1
    end
  end
  return my_words
end

def reverse_single_word(index, word_end, my_words)

  while index < word_end
    temp = my_words[index]
    my_words[index] = my_words[word_end - 1]
    my_words[word_end - 1] = temp
    index += 1
    word_end -= 1
  end
  return my_words
end


