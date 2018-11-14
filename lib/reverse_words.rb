# A method to reverse each word in a sentence, in place.
def reverse_words(my_words)

  unless my_words.nil?
    words = split_words(my_words)

    words.map! do |word|
      string_reverse(word)

    end

    new_words = words.join

    my_words.length.times do |i|
      my_words[i] = new_words[i]
    end
  end
end

def string_reverse(my_string)

  unless my_string.nil?  || my_string.length < 2
    length = my_string.length

    (length/2).times do |i|
      tmp = my_string[length - i - 1]
      my_string[length - i - 1] = my_string[i]
      my_string[i] = tmp
    end
  end

  return my_string

end

def split_words(my_words)

  parsed_words = []
  start_break = 0
  end_break = 0
  words_end = my_words.length-1

  words_end.times do |i|
    if word_break?(my_words[i], my_words[i+1])

      end_break = i
      parsed_words << my_words[start_break..end_break]
      start_break = end_break + 1
    end
  end

  parsed_words << my_words[start_break..words_end]
  return parsed_words

end

def word_break?(char1, char2)
  return (char1 == ' ' && char2 != ' ') || (char1 != ' ' && char2 == ' ')
end
