# # A method to reverse each word in a sentence, in place.
require 'pry'

def reverse_one_word(word, start = 0, finish = word.length)
  if word == nil
    return nil
  end

  i = start
  index = finish

  while i < index
    first_letter = word[i]
    last_letter = word[index]

    word[i] = last_letter
    word[index] = first_letter

    i += 1
    index -= 1
  end

  return word
end

def reverse_words(my_words)
  if my_words == nil
    return nil
  end

  current_index = 0

  start = nil
  finish = nil

  while current_index < my_words.length
    currently_on_letter = my_words[current_index] != " "
    currently_on_space = my_words[current_index] == " "
    at_end_of_string = current_index == my_words.length - 1

    if start == nil && currently_on_letter
      start = current_index
    end

    if start && currently_on_space
      finish = current_index - 1
    end

    if start && at_end_of_string
      finish = current_index
    end

    if start && finish
      reverse_one_word(my_words, start, finish)
      start = nil
      finish = nil
    end

    current_index += 1
  end
end
