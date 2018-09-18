# A method to reverse each word in a sentence, in place.
def reverse_words(my_words)
  if my_words == nil
    return nil
  end
  string_length = (my_words.length - 1)
  count = 0
  until count > string_length do
    if my_words[count] =~ /\S/
      word_start = count
      word_end = count
      until my_words[word_end] =~ /\s/ || word_end == string_length
        word_end += 1
      end
      new_count = word_end
      if word_end != string_length
        word_end -= 1
      end
      until word_start > word_end do
        container = my_words[word_start]
        my_words[word_start] = my_words[word_end]
        my_words[word_end] = container
        word_start += 1
        word_end -= 1
      end
      count = new_count
    end
    count += 1
  end
end
