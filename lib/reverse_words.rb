# A method to reverse each word in a sentence, in place.
def reverse_words(my_words)
  word_index_start = 0
  word_index_end = 0
  while my_words != nil && word_index_end <= my_words.length
    if my_words[word_index_end] == ' ' || word_index_end == my_words.length
      front_index = word_index_start
      back_index = word_index_end - 1

      while front_index < back_index
        temp = my_words[front_index]
        my_words[front_index] = my_words[back_index]
        my_words[back_index] = temp
        front_index += 1
        back_index -= 1
      end
      word_index_start = word_index_end + 1
    end

    word_index_end += 1
  end
end
